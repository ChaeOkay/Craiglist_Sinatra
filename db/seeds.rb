# require 'faker'

Category.create(description: "Apt/Housing")
Category.create(description: "Rooms/Shared")
Category.create(description: "Sublet/Temporary")

# Post.create( title: Faker::Name.name,
#                   description: Faker::Company.bs,
#                   email: Faker::Internet.email,
#                   rent: rand(700..200),
#                   area: rand(600..1200) )

Post.create( {title: "Your new home in Chinatown",
                  description: "Studio, new appliances, w/d",
                  email: "guest@guest.com",
                  rent: 2000,
                  area: 650 } )
