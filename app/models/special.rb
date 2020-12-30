class Special < ApplicationRecord
  belongs_to :restaurant
  validates :name, presence: true

  def restaurant_name
    restaurant = Restaurant.find_by(id: restaurant_id)
    return restaurant.name
  end
end
