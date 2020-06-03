class AcceptedOffersController < ApplicationController
  def create
    @offer = Offer.find(params[:offer_id])
    @accepted_offer = AcceptedOffer.new
    @accepted_offer.offer = @offer
    @accepted_offer.user = current_user
    authorize @accepted_offer
    if @accepted_offer.save
      redirect_to offer_path(@offer), notice: 'You have committed to pick up.'
    else
      render :show
    end
  end

  def destroy
    @accepted_offer = AcceptedOffer.find(params[:id])
    authorize @accepted_offer
    @accepted_offer.destroy
    redirect_to @accepted_offer.offer, notice: 'Your commitment to pick up was successfully cancelled.'
  end
end
