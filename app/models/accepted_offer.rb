class AcceptedOffer < ApplicationRecord
  belongs_to :user
  belongs_to :offer
  validates :user, :offer, presence: true
end
