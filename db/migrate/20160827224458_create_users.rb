class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.string  :username
      t.string  :password
      t.string  :firstname
      t.string  :lastname
      t.string  :phone
      t.string  :address
      t.string  :email
      t.string  :city
      t.string  :state
      t.string  :zipcode

      t.timestamps
    end
  end
end
