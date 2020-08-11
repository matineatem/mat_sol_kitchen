# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Dessert.destroy_all
User.destroy_all
Order.destroy_all

20.times { Dessert.create(name: Faker::Dessert.unique.variety) }
10.times { User.create(name: Faker::Name.unique.name)}


15.times {Order.create(user: User.all.sample, dessert: Dessert.all.sample )}


