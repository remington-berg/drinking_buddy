class CreateSpecials < ActiveRecord::Migration[6.0]
  def change
    create_table :specials do |t|
      t.string :name
      t.string :description
      t.string :day
      t.integer :restaurant_id
      t.string :image_url

      t.timestamps
    end
  end
end
