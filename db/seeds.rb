# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Category.create(name:"Plastic")
Category.create(name:"Glass")
Category.create(name:"Paper")


Offer.create(volume: "20 plastic bottles", general_location: "London", exact_location: "77 Some Street",
 pick_up_on: "3 July 2020", category_id: 2, user_id: 1)

Offer.create(volume: "10 glass bottles", general_location: "Hamilton", exact_location: "2 Another Street",
 pick_up_on: "15 July 2020", category_id: 3, user_id: 1)

puts "seeds created"
