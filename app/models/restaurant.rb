class Restaurant < ApplicationRecord
  has_many :specials
  validates :name, presence: true
end
