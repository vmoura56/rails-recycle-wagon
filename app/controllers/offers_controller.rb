class OffersController < ApplicationController
  def index
    @offers = Offer.all
  end

  def show
    @offer = Offer.find(params[:id])
  end

  def new
    @offer = Offer.new
  end

  def create
    @offer = Offer.new(offer_params)
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
  end

  def update
    @offer = Offer.find(params[:id])
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
end
