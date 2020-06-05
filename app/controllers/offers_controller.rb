class OffersController < ApplicationController
  def index
    @offers = policy_scope(Offer).where.not(id: AcceptedOffer.select(:offer_id).uniq).joins(:category).geocoded

    client_ip = request.remote_ip
    # If testing from local host, ip will set to a known London ip
    if client_ip == "::1"
      client_ip = "5.62.43.181"
    end

    @user_location = Geocoder.search(client_ip).first.coordinates

    location_search if params[:query].present?
  
    @offers_near = Offer.where.not(id: AcceptedOffer.select(:offer_id).uniq).joins(:category).geocoded.near(@user_location, 100)
    
    filter_offers if params[:query].present?
    
    @markers = @offers_near.map do |offer|
      {
        lat: offer.latitude,
        lng: offer.longitude
      }
    end

  end

  def show
    @offer = Offer.find(params[:id])
    authorize @offer
    @markers = [{
      lat: @offer.latitude,
      lng: @offer.longitude
    }]
    @new_accepted_offer = AcceptedOffer.new(offer: @offer, user: current_user)
    @accepted_offer = AcceptedOffer.find_by(offer_id: @offer.id, user_id: current_user.id)
  end

  def new
    @offer = Offer.new
    authorize @offer
  end

  def create
    @offer = Offer.new(offer_params)
    @offer.user = current_user
    authorize @offer
    if @offer.save
      flash[:success] = "Offer successfully created"
      redirect_to @offer
    else
      flash[:error] = "Something went wrong"
      render 'new'
    end
  end

  def edit
    @offer = Offer.find(params[:id])
    authorize @offer
  end

  def update
    @offer = Offer.find(params[:id])
    authorize @offer
    if @offer.update(offer_params)
      flash[:success] = "Offer was successfully updated"
      redirect_to @offer
    else
      flash[:error] = "Something went wrong"
      render 'edit'
    end
  end

  def destroy
    @offer = Offer.find(params[:id])
    authorize @offer
    if @offer.destroy
      flash[:success] = 'Offer was successfully deleted.'
      redirect_to offers
    else
      flash[:error] = 'Something went wrong'
      redirect_to offers
    end
  end

  private

  def offer_params
    params.require(:offer).permit(:volume, :general_location, :exact_location, :pick_up_on, :category_id)
  end

  def filter_offers
    # old search by location name filter, removed it after adding geocoding
    # @offers = Offer.where('general_location ILIKE ?', "%#{search[:general_location]}%") unless search[:general_location].empty?
    query_array = params[:query].split(" ")

    query_array.each do |query_word|
      sql_query = " \
        volume ILIKE :query OR \
        categories.name ILIKE :query OR \
        general_location ILIKE :query OR \
        pick_up_on ILIKE :query
      "
      if @offers_near.where(sql_query, query: "%#{query_word}%").any?
        @offers_near = @offers_near.where(sql_query, query: "%#{query_word}%")
      end
    end
  end
  
  def location_search
    if Geocoder.search(params[:query]).first.coordinates.any?
      @user_location = Geocoder.search(params[:query]).first.coordinates
    end
  end
end
