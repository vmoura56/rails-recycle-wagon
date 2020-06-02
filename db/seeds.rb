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

vinny = User.create!(email:"vinny@recycle.com", password:"123456", username: "VinnyRecycler")
sophie = User.create!(email:"sophie@recycle.com", password:"123456", username: "LuckySevans7")
gabriel = User.create!(email:"gabriel@recycle.com", password:"123456", username: "GabrielGreen")
recycler = User.create!(email:"recycler@recycle.com", password:"123456", username: "Recycler123")
motherearth = User.create!(email:"motherearth@recycle.com", password:"123456", username: "Mother Earth")
planetsaver = User.create!(email:"planetsaver@recycle.com", password:"123456", username: "PlanetSaver8")
healer = User.create!(email:"healer@recycle.com", password:"123456", username: "Healer4hire")
matt = User.create!(email:"matt@recycle.com", password:"123456", username: "Matesao")
milene = User.create!(email:"milene@recycle.com", password:"123456", username: "Milene")
andre = User.create!(email:"andre@recycle.com", password:"123456", username: "Andre")
diogo = User.create!(email:"diogo@recycle.com", password:"123456", username: "Diogo")
marcel = User.create!(email:"marcel@recycle.com", password:"123456", username: "Marcel")

Offer.create!(volume: "10 kg of mixed paper", general_location: "Copacabana", exact_location: "Avenida Prado Junior 335, Rio de Janeiro",
 pick_up_on: "7 June 2020", category: paper, user: matt)

Offer.create!(volume: "10 glass bottles", general_location: "Copacabana", exact_location: "Avenida Prado Junior 335, Rio de Janeiro",
 pick_up_on: "7 June 2020", category: glass, user: matt)

Offer.create!(volume: "5 plastic bottles", general_location: "Copacabana", exact_location: "Avenida Prado Junior 335, Rio de Janeiro",
 pick_up_on: "7 June 2020", category: paper, user: matt)

Offer.create!(volume: "5 glass jards", general_location: "Copacabana", exact_location: "Avenida Prado Junior 335, Rio de Janeiro",
 pick_up_on: "7 June 2020", category: paper, user: matt)

 Offer.create!(volume: "2 cardboard boxes", general_location: "Copacabana", exact_location: "Avenida Prado Junior 335, Rio de Janeiro",
 pick_up_on: "7 June 2020", category: paper, user: matt)

Offer.create!(volume: "50 cardboard boxes", general_location: "Ipanema", exact_location: "Rua Visconde de Piraja 206, Rio de Janeiro",
 pick_up_on: "5 June 2020", category: paper, user: marcel)

Offer.create!(volume: "40 kg of mixed paper", general_location: "Ipanema", exact_location: "Rua Visconde de Piraja 206, Rio de Janeiro",
 pick_up_on: "5 June 2020", category: paper, user: marcel)

Offer.create!(volume: "30 glass jars", general_location: "Ipanema", exact_location: "Rua Visconde de Piraja 206, Rio de Janeiro",
 pick_up_on: "5 June 2020", category: glass, user: marcel)

Offer.create!(volume: "25 plastic bottles", general_location: "Ipanema", exact_location: "Rua Visconde de Piraja 206, Rio de Janeiro",
 pick_up_on: "5 June 2020", category: plastic, user: marcel)

Offer.create!(volume: "50 cardboard boxes", general_location: "Ipanema", exact_location: "Rua Visconde de Piraja 206, Rio de Janeiro",
 pick_up_on: "5 June 2020", category: paper, user: marcel)

Offer.create!(volume: "20 boxes of legal documents", general_location: "Recreio", exact_location: "Rua Jorge Yunes 320, Rio de Janeiro",
 pick_up_on: "19 June 2020", category: paper, user: andre)

Offer.create!(volume: "200 flashcards", general_location: "Arpoador", exact_location: "Rua Francisco Otaviano, 67 Rio de Janeiro",
 pick_up_on: "19 June 2020", category: paper, user: milene)

 Offer.create!(volume: "8 wine bottles", general_location: "Arpoador", exact_location: "R. Francisco Otaviano, 67 Rio de Janeiro",
 pick_up_on: "19 June 2020", category: glass, user: milene) 

Offer.create!(volume: "55 bottles of gin", general_location: "Copacabana", exact_location: "Rua Domingo Ferreira 6, Rio de Janeiro",
 pick_up_on: "20 June 2020", category: glass, user: diogo)

Offer.create!(volume: "2 bottles of cachaca", general_location: "Copacabana", exact_location: "Rua Domingo Ferreira 6, Rio de Janeiro",
 pick_up_on: "20 June 2020", category: glass, user: diogo)

Offer.create!(volume: "10 glass bottles", general_location: "Greenwich", exact_location: "7 Bellot Street, London, SE10",
 pick_up_on: "22 June 2020", category: glass, user: vinny)

Offer.create!(volume: "1 tonne of paper", general_location: "Kensington", exact_location: "12 Kensington High Street, London, W8",
 pick_up_on: "15 July 2020", category: paper, user: gabriel)

Offer.create!(volume: "20 plastic bottles", general_location: "Shoreditch", exact_location: "1 Brick Lane, London, E1",
 pick_up_on: "3 July 2020", category: plastic, user: sophie)

Offer.create!(volume: "12 cardboard boxes", general_location: "Barbican", exact_location: "22 Old Street, London, EC1V",
 pick_up_on: "17 June 2020", category: paper, user: motherearth)

Offer.create!(volume: "77 wine bottles", general_location: "Deptford", exact_location: "22 Deptford High Street, London, SE8",
 pick_up_on: "22 June 2020", category: glass, user: recycler)

Offer.create!(volume: "1 tonne plastic mixed", general_location: "Clapham", exact_location: "32 The Pavement, London, SW4",
 pick_up_on: "1 August 2020", category: plastic, user: planetsaver)

Offer.create!(volume: "5 boxes of office paper", general_location: "Holborn", exact_location: "16 Elm Street, London, WC1X",
 pick_up_on: "18 July 2020", category: paper, user: healer)

Offer.create!(volume: "8 sheets of glass 1m x 1m", general_location: "Finsbury Park", exact_location: "3 Finsbury Park Road, London, N4",
 pick_up_on: "4 July 2020", category: glass, user: sophie)

Offer.create!(volume: "8 sheets of glass 1m x 1m", general_location: "Aldwych", exact_location: "66 Kingsway, London, SW14",
 pick_up_on: "24 July 2020", category: glass, user: vinny)

Offer.create!(volume: "1/2 tonne plastic", general_location: "Vassal", exact_location: "6 Gosling Way, London, SW9",
 pick_up_on: "19 June 2020", category: plastic, user: healer)

Offer.create!(volume: "35 cardboard boxes", general_location: "Shoreditch", exact_location: "1 Curtain Road, London, E1",
 pick_up_on: "18 July 2020", category: paper, user: gabriel)

Offer.create!(volume: "1/2 tonne glass", general_location: "Shoreditch", exact_location: "10 Worship Street, London, E1",
 pick_up_on: "22 July 2020", category: glass, user: motherearth)

Offer.create!(volume: "6 boxes of plastic bags", general_location: "Shoreditch", exact_location: "1 Brick Lane, London, E1",
 pick_up_on: "3 July 2020", category: plastic, user: sophie)

Offer.create!(volume: "12 glass bottles", general_location: "Shoreditch", exact_location: "2 Hearn Street, London, EC2A",
 pick_up_on: "1 August 2020", category: glass, user: planetsaver)

Offer.create!(volume: "17 cardboard boxes", general_location: "Shoreditch", exact_location: "1 Brick Lane, London, E1",
 pick_up_on: "3 July 2020", category: paper, user: sophie)

Offer.create!(volume: "14 boxes of sheet paper", general_location: "Holborn", exact_location: "16 Elm Street, London, WC1X",
 pick_up_on: "18 August 2020", category: paper, user: healer)

Offer.create!(volume: "5 tonnes plastic containers", general_location: "Deptford", exact_location: "6 Gosling Way, London, SW9",
 pick_up_on: "22 June 2020", category: plastic, user: recycler)

Offer.create!(volume: "27 plastic bottles", general_location: "Finsbury Park", exact_location: "3 Finsbury Park Road, London, N4",
 pick_up_on: "18 July 2020", category: plastic, user: sophie)

puts "seeds created"
