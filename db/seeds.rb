# require 'faker'

Category.create(description: "Apt/Housing")
Category.create(description: "Rooms/Shared")

Post.create( {title: "Your new home in Chinatown",
                  description: "Studio, new appliances, w/d",
                  email: "guest1@guest.com",
                  rent: 2000,
                  area: 650 } )

Post.create( {title: "Your new home in Fisherman's Warf",
                  description: "1bd, new appliances, w/d",
                  email: "guest2@guest.com",
                  rent: 1800,
                  area: 600 } )

Post.create( {title: "Your new home in Russian Hill",
                  description: "2bd, new appliances, w/d",
                  email: "guest3@guest.com",
                  rent: 2200,
                  area: 500 } )

c = Category.first
c.posts << Post.all

