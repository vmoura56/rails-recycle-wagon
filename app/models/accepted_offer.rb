class AcceptedOffer < ApplicationRecord
  belongs_to :user
  belongs_to :offer
  validates :user_id, :offer_id, presence: true
end
