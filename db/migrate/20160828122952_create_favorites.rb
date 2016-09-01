class CreateFavorites < ActiveRecord::Migration[5.0]
  def change
    create_table :favorites do |t|
      t.string :restaurantname
      t.string :street
      t.string :city
      t.string :state
      t.string :zip
      t.string :phone
      t.string :itemname
      t.string :price
      t.string :description

      t.references :user
      t.timestamps
    end
  end
end
