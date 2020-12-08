class CreateRestarants < ActiveRecord::Migration[6.0]
  def change
    create_table :restarants do |t|
      t.string :name
      t.string :address
      t.string :phone_number

      t.timestamps
    end
  end
end
