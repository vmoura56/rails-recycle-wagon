class Offer < ApplicationRecord
  belongs_to :category
  belongs_to :user
  has_many :acceptedoffers
  validates :user, :category, :exact_location, :general_location, :volume, :pick_up_on, presence: true
end
