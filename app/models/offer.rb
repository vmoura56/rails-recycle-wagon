class Offer < ApplicationRecord
  belongs_to :category
  belongs_to :user
  has_many :accepted_offers, dependent: :destroy
  validates :user, :category, :exact_location, :general_location, :volume, :pick_up_on, presence: true
  geocoded_by :exact_location
  after_validation :geocode, if: :will_save_change_to_exact_location?
end
