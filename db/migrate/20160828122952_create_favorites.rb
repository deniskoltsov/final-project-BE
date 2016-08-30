class CreateFavorites < ActiveRecord::Migration[5.0]
  def change
    create_table :favorites do |t|
      t.string  :name
      t.string  :restaurant
      t.string  :phone
      t.string  :address
      t.integer :price

      t.references :user
      t.timestamps
    end
  end
end
