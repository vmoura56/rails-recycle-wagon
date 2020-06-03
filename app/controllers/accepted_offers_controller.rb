class AcceptedOffersController < ApplicationController
  def create
    @offer = Offer.find(params[:offer_id])
    @accepted_offer = AcceptedOffer.new(accepted_offer_params)
    @accepted_offer.offer = @offer
    if @accepted_offer.save
      redirect_to offer_path(@offer), notice: 'You have committed to pick up.'
    else
      render :show
    end
  end

  def destroy
    @accepted_offer = AcceptedOffer.find(params[:id])
    @accepted_offer.destroy
    redirect_to @accepted_offer.offer, notice: 'Your commitment to pick up was successfully cancelled.'
  end

  private

  def accepted_offer_params
    params.require(:accepted_offer).permit(:user_id, :offer_id)
  end
end
