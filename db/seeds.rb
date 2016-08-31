# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

u1 = User.create(username: 'guest', password: 'guest', firstname: 'juan', lastname: 'juanson', phone: '3478852637', email: 'juanjuanson@juan.com', address: '3437 Weidner ave.', city: 'Oceanside', state: 'NY', zipcode: '11572')
u2 = User.create(username: 'EthanUsername', password: 'pass1234', firstname: 'Ethan FN', lastname: 'Ethan LN', phone: '3478852638', email: 'Ethan@Ethan.com', address: '3437 Feidner ave.', city: 'Brooklyn', state: 'NY', zipcode: '11230')
u3 = User.create(username: 'LizaUsername', password: 'pass12345', firstname: 'Liza FN', lastname: 'Liza LN', phone: '3478852638', email: 'Liza@Liza.com', address: '3437 Keidner ave.', city: 'Brooklyn', state: 'NY', zipcode: '11223')


f1 = Favorite.create(name: 'Taco', restaurant: "some place", phone: '3478852662', address: ' an address of the place', price: 5, user_id:1)
f2 = Favorite.create(name: 'Pizza', restaurant: "another one", phone: '3478852662', address: ' an address of the place', price: 6, user_id:2)
f3 = Favorite.create(name: 'Burger', restaurant: "your mommas house", phone: '3478852662', address: ' an address of the place', price: 10, user_id:3)


u1.favorites.push(f1, f2)
u2.favorites.push(f3)
