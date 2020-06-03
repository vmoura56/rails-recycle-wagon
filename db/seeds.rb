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

Offer.create(volume: "20 plastic bottles", general_location: "London", exact_location: "7 Bellot Street, London, England",
 pick_up_on: "3 July 2020", category_id: 2, user_id: 2)

Offer.create(volume: "10 glass bottles", general_location: "Hamilton", exact_location: "2 Church Street, Hamilton, hm11, Bermuda",
 pick_up_on: "22 June 2020", category_id: 3, user_id: 3)

Offer.create(volume: "1 tonne of paper", general_location: "Paris", exact_location: "112 Rue du Faubourg Saint-Honoré, 75008 Paris, France",
 pick_up_on: "15 July 2020", category_id: 4, user_id: 3)

puts "seeds created"
