# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

u1 = User.create(username: 'guest', password: 'guest', firstname: 'juan', lastname: 'juanson', phone: '3478852637', email: 'juanjuanson@juan.com', address: '902 broadway', city: 'New York', state: 'NY', zipcode: '10010')
u2 = User.create(username: 'EthanUsername', password: 'pass1234', firstname: 'Ethan FN', lastname: 'Ethan LN', phone: '3478852638', email: 'Ethan@Ethan.com', address: '3437 Feidner ave.', city: 'Brooklyn', state: 'NY', zipcode: '11230')
u3 = User.create(username: 'LizaUsername', password: 'pass12345', firstname: 'Liza FN', lastname: 'Liza LN', phone: '3478852638', email: 'Liza@Liza.com', address: '3437 Keidner ave.', city: 'Brooklyn', state: 'NY', zipcode: '11223')

f1 = Favorite.create(restaurantname: "Dolcino Restaurant", street: "517 2ND AVE", city: "NEW YORK", state: "NY", zip: "10016", phone: "212-448-9505", itemname: "Grilled Salmon", price: "18.95", description: "With Dijon mustard sauce.", user_id: '1')
