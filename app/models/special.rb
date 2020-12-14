class Special < ApplicationRecord
  belongs_to :restaurant
  validates :name, presence: true

  def restaurant
    @restaurant = Restaurant.find_by(id: restaurant_id)
    return @restaurant.name
  end
end
