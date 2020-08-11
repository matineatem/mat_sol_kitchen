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
OrderDessert.destroy_all

10.times { User.create(name: Faker::Name.unique.name)}

25.times {Order.create(name_tag: Faker::Number.unique.number, user: User.all.sample)}

20.times { Dessert.create(name: Faker::Dessert.unique.variety, price: rand(1..20)) }

10.times {OrderDessert.create(order: Order.all.sample, dessert: Dessert.all.sample)}


