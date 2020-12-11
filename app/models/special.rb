class Special < ApplicationRecord
  belongs_to :restaurant
  validates :name, presence: true

  def restaurant
    Restaurant.find_by(id: restaurant_id)
  end
end
