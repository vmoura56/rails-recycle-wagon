# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "clearing up the mess leftover from the last idiot to use this"

Category.destroy_all
Offer.destroy_all
User.destroy_all
puts %{
	    ______________________________    . \\  | / .
	   /                            / \\     \\ \\ / /
	  |                            | ==========  - -
	   \\____________________________\\_/     / / \\ \
}

plastic = Category.create!(name:"Plastic")
glass = Category.create!(name:"Glass")
paper = Category.create!(name:"Paper")

bob = User.create!(email:"player@1.com", password:"123456")
mike = User.create!(email:"player@2.com", password:"123456")
jon = User.create!(email:"player@3.com", password:"123456")

Offer.create!(volume: "20 plastic bottles", general_location: "London", exact_location: "7 Bellot Street, London, England",
 pick_up_on: "3 July 2020", category: plastic, user: bob)

Offer.create!(volume: "10 glass bottles", general_location: "Hamilton", exact_location: "2 Church Street, Hamilton, hm11, Bermuda",
 pick_up_on: "22 June 2020", category: glass, user: mike)

Offer.create!(volume: "1 tonne of paper", general_location: "Paris", exact_location: "112 Rue du Faubourg Saint-Honoré, 75008 Paris, France",
 pick_up_on: "15 July 2020", category: paper, user: jon)

puts "seeds created"
