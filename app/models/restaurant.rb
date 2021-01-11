class Restaurant < ApplicationRecord
  has_many :specials
  validates :name, presence: true
  # geocoded_by :address
  # after_validation :geocode
end
