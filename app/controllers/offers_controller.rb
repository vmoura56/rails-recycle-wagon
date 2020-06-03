class OffersController < ApplicationController
  def index
    @offers = policy_scope(Offer)

    filter_offers if params[:search]
  end

  def show
    @offer = Offer.find(params[:id])
    authorize @offer
  end

  def new
    @offer = Offer.new
    authorize @offer
  end

  def create
    @offer = Offer.new(offer_params)
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
<<<<<<< HEAD
    if @offer.update_attributes(offer_params)
      flash[:success] = "Offer was successfully updated"
      redirect_to @offer
    else
      flash[:error] = "Something went wrong"
      render 'edit'
    end
=======
>>>>>>> a57af0ff90b5ff41da6b21b493c95917440c0935

    authorize @offer
      if @offer.update_attributes(offer_params)
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
    params.require(:offer).permit(:volume, :general_location, :exact_location, :pick_up_on, :user, :category)
  end

  def filter_offers
    search = params[:search]
    @offers = Offer.where('general_location ILIKE ?', "%#{search[:general_location]}%") unless search[:general_location].empty?
    @offers = Offer.where(category: search[:category]) unless search[:category] == "Any"
  end
<<<<<<< HEAD
=======

>>>>>>> a57af0ff90b5ff41da6b21b493c95917440c0935
end
