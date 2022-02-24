require "open-uri"

puts "deleting old records"
Booking.destroy_all
EquipmentItem.destroy_all
Category.destroy_all
User.destroy_all
puts "done"

# User seeds
puts "Creating users"
user1 = User.create!(email: "bob@bob.com", password: "bob123", first_name: "Bob", last_name: "Doe")
user2 = User.create!(email: "tod@tod.com", password: "tod123", first_name: "Tod", last_name: "Sue")
user3 = User.create!(email: "lisa@lisa.com", password: "lisa123", first_name: "Lisa", last_name: "Moon")
user4 = User.create!(email: "nick@nick.com", password: "nick123", first_name: "Nick", last_name: "Sun")
user5 = User.create!(email: "kurt@kurt.com", password: "kurt123", first_name: "Kurt", last_name: "Cloud")

# Category seeds
puts "creating categories"
cat1 = Category.create!(name: "Skiing")
cat2 = Category.create!(name: "Snowboarding")
cat3 = Category.create!(name: "Accessories")

# Equipment Item seeds
puts "creating equipment items"
equip1 = EquipmentItem.new(category: cat1, title: "Men's Skis",
                           price: 16.25, location: "Munich", user_id: user1.id,
                           description: "These are skis")
equip1.photo.attach(io: URI.open('https://res.cloudinary.com/dbzj7fllo/image/upload/v1645545011/development/nqsnu3u05f3atnbvdw5m21ckiw6o.jpg'),
                    filename: 'skis.jpg', content_type: 'image/png')
equip1.save
equip2 = EquipmentItem.new(category: cat2, title: "Woman's Snowboard",
                           price: 10.00, location: "Sarnen", user_id: user1.id,
                           description: "This is a snowboard")
equip2.photo.attach(io: URI.open('https://res.cloudinary.com/dbzj7fllo/image/upload/v1645714410/development/m8txcfa2ticak8qtfckq4jh7mio1.jpg'),
                    filename: 'snowboard.jpg', content_type: 'image/png')
equip2.save!
equip3 = EquipmentItem.new(category: cat3, title: "Womans Helmet",
                           price: 5.00, location: "Zell am see", user_id: user2.id,
                           description: "Here is a strong sturdy helmet")
equip3.photo.attach(io: URI.open('https://res.cloudinary.com/dbzj7fllo/image/upload/v1645545221/development/wbgkhyvjwr7h0f1yl79id32ze61u.jpg'),
                    filename: 'helmet.jpg', content_type: 'image/png')
equip3.save!
equip4 = EquipmentItem.new(category: cat2, title: "Man's snowboard",
                           price: 48.00, location: "Sonthofen", user_id: user2.id,
                           description: "Loved doing tricks on this board, broke my leg cant use at the moment")
equip4.photo.attach(io: URI.open('https://res.cloudinary.com/dbzj7fllo/image/upload/v1645545208/development/rsaaygbf7j5ttyibnidqbgdxcpay.jpg'),
                    filename: 'snowboard2.jpg', content_type: 'image/png')
equip4.save!
equip5 = EquipmentItem.new(category: cat1, title: "Womans skis",
                           price: 19.99, location: "Dresden", user_id: user3.id,
                           description: "Womans skis 150 slightly used")
equip5.photo.attach(io: URI.open('https://res.cloudinary.com/dbzj7fllo/image/upload/v1645698548/development/30xuq3y5e3w3iw8xpre5oxzn7crh.jpg'),
                    filename: 'skis2.jpg', content_type: 'image/png')
equip5.save!
equip6 = EquipmentItem.new(category: cat3, title: "Womans Ski Goggles",
                           price: 15.15, location: "Zurich", user_id: user3.id,
                           description: "these are some awesome goggles to take skiing")
equip6.photo.attach(io: URI.open('https://res.cloudinary.com/dbzj7fllo/image/upload/v1645706772/development/02pmdkw9ng8j2u1qgt6r37w2vyuw.jpg'),
                    filename: 'goggles.jpg', content_type: 'image/png')

# Booking seeds
puts "creating bookings"
Booking.create!(user_id: user5.id, equipment_item_id: equip2.id, booking_date: Date.today)
Booking.create!(user_id: user3.id, equipment_item_id: equip3.id, booking_date: Date.today)
Booking.create!(user_id: user2.id, equipment_item_id: equip5.id, booking_date: Date.today)
Booking.create!(user_id: user1.id, equipment_item_id: equip1.id, booking_date: Date.today)
Booking.create!(user_id: user4.id, equipment_item_id: equip4.id, booking_date: Date.today)

puts 'all done seeding'
