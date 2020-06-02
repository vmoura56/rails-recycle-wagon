class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home, :index, :show]

  def home
    client_ip = request.remote_ip
    # If testing from local host, ip will set to a known London ip
    if client_ip == "::1"
      client_ip = "5.62.43.181"
    end
    
    if current_user && current_user.username == "VinnyRecycler"
      client_ip = "Avenida Lucio Costa 5500 rio de janeiro"
    end

    @user_location = Geocoder.search(client_ip).first.coordinates
  
    @offers_near = Offer.where.not(id: AcceptedOffer.select(:offer_id).uniq).geocoded.near(@user_location, 50)

    @markers = @offers_near.map do |offer|
      {
        lat: offer.latitude,
        lng: offer.longitude
      }
    end
  end
end
