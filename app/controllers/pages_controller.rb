class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home, :index, :show]

  def home
    @offers = Offer.where.not(id: AcceptedOffer.select(:offer_id).uniq)
  end
end
