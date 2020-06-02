class RecycleCategory < ApplicationRecord
  has_many :offers, dependent: :destroy
  has_many :users, through: :offers
  validates :name, presence: true, uniqueness: true
end
