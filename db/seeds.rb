# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

u1 = User.create(username: 'IvanUsername', first_name: 'Ivan', last_name: 'Ayala', phone_number: '3478852636', address: '3437 Weidner ave. Oceanside, NY 11572', email: 'Ivan@gmail.com')
u2 = User.create(username: 'NateUsername', first_name: 'Nate', last_name: 'Smith', phone_number: '3478852637', address: '3437 Weidner ave. Oceanside, NY 11572', email: 'nate@gmail.com')
u3 = User.create(username: 'AustinUsername', first_name: 'Austin', last_name: 'Hudson', phone_number: '3478852638', address: '3437 Weidner ave. Oceanside, NY 11572', email: 'austin@gmail.com')


f1 = Favorite.create(name: 'Taco', restaurant: "some place", phone_number: '3478852662', address: ' an address of the place', price: 5, user_id:1)
f2 = Favorite.create(name: 'Pizza', restaurant: "another one", phone_number: '3478852662', address: ' an address of the place', price: 6, user_id:2)
f3 = Favorite.create(name: 'Burger', restaurant: "your mommas house", phone_number: '3478852662', address: ' an address of the place', price: 10, user_id:3)
