class CreateFavorites < ActiveRecord::Migration[5.0]
  def change
    create_table :favorites do |t|
      t.string :restaurantName
      t.string :street
      t.string :city
      t.string :state
      t.string :zip
      t.string :phone
      t.string :itemName
      t.string :price
      t.string :description

      t.references :user
      t.timestamps
    end
  end
end
