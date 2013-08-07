# require 'faker'

Category.create(description: "Apartments")
Category.create(description: "Rooms-Shared")

Post.create( {title: "Your new home in Chinatown",
                  description: "Studio, new appliances, w/d",
                  email: "guest1@guest.com",
                  secure_email: "2odfoi4n289r32@craigslistjr.com",
                  rent: 2000,
                  area: 650,
                  key: "f32983udj9" } )

Post.create( {title: "Your new home in Fisherman's Warf",
                  description: "1bd, new appliances, w/d",
                  email: "guest2@guest.com",
                  secure_email: "fjf8932983hiufewf28y9@craigslistjr.com",
                  rent: 1800,
                  area: 600,
                  key: "f9rh9298rhh" } )

Post.create( {title: "Your new home in Russian Hill",
                  description: "2bd, new appliances, w/d",
                  email: "guest3@guest.com",
                  secure_email: "8923982h982roy8q@craigslistjr.com",
                  rent: 2200,
                  area: 500,
                  key: "9hrh2h2h32r" } )

c_first = Category.first
c_first.posts << Post.find(1)
c_first.posts << Post.find(2)

c_last = Category.last
c_last.posts << Post.find(3)

