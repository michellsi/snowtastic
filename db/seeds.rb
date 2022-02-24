# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require "open-uri"
user1 = User.create(email: "bob@bob.com", password: "bob123", first_name: "Bob", last_name: "Doe")
user2 = User.create(email: "tod@tod.com", password: "tod123", first_name: "Tod", last_name: "Sue")
user3 = User.create(email: "lisa@lisa.com", password: "lisa123", first_name: "Lisa", last_name: "Moon")
user4 = User.create(email: "nick@nick.com", password: "nick123", first_name: "Nick", last_name: "Sun")
user5 = User.create(email: "kurt@kurt.com", password: "kurt123", first_name: "Kurt", last_name: "Cloud")

Category.create(name: "Skiing")
Category.create(name: "Snowboarding")
Category.create(name: "Accessories")

# equip1 = EquipmentItem.new(category: "Skiing", description: "These are skis", user_id: user1.id)
# equip1.photo.attach(io: URI.open('https://res.cloudinary.com/dbzj7fllo/image/upload/v1645545011/development/nqsnu3u05f3atnbvdw5m21ckiw6o.jpg'),
#                     filename: 'skis.jpg', content_type: 'image/png')
# equip1.save
# equip2 = EquipmentItem.create(category: "Snowboarding", description: "This is a snowboard", user_id: user1.id)
# equip2.photo.attach(io: URI.open('https://res.cloudinary.com/dbzj7fllo/image/upload/v1645545208/development/rsaaygbf7j5ttyibnidqbgdxcpay.jpg'),
#                     filename: 'snowboard.jpg', content_type: 'image/png')
# equip2.save
# equip3 = EquipmentItem.create(category: "Accessories", description: "We are accessories", user_id: user2.id)
# equip3.photo.attach(io: URI.open('https://res.cloudinary.com/dbzj7fllo/image/upload/v1645545221/development/wbgkhyvjwr7h0f1yl79id32ze61u.jpg'),
#                     filename: 'helmet.jpg', content_type: 'image/png')
# equip3.save
# equip4 = EquipmentItem.create(category: "Snowboarding", description: "Yay snowboarding", user_id: user2.id)
# equip4.photo.attach(io: URI.open('https://res.cloudinary.com/dbzj7fllo/image/upload/v1645545208/development/rsaaygbf7j5ttyibnidqbgdxcpay.jpg'),
#                     filename: 'snowboard.jpg', content_type: 'image/png')
# equip4.save
# equip5 = EquipmentItem.create(category: "Skiing", description: "Boo skiing", user_id: user3.id)
# equip5.photo.attach(io: URI.open('https://res.cloudinary.com/dbzj7fllo/image/upload/v1645545011/development/nqsnu3u05f3atnbvdw5m21ckiw6o.jpg'),
#                     filename: 'skis.jpg', content_type: 'image/png')
# equip5.save
# equip6 = EquipmentItem.create(category: "Accessories", description: "Come one come all", user_id: user3.id)
# equip6.photo.attach(io: URI.open('https://res.cloudinary.com/dbzj7fllo/image/upload/v1645545221/development/wbgkhyvjwr7h0f1yl79id32ze61u.jpg'),
#                     filename: 'helmet.jpg', content_type: 'image/png')
# equip6.save
# equip7 = EquipmentItem.create(category: "Skiing", description: "Where is your head at?", user_id: user4.id)
# equip7.photo.attach(io: URI.open('https://res.cloudinary.com/dbzj7fllo/image/upload/v1645545011/development/nqsnu3u05f3atnbvdw5m21ckiw6o.jpg'),
#                     filename: 'skis.jpg', content_type: 'image/png')
# equip7.save
# equip8 = EquipmentItem.create(category: "Snowboarding", description: "Snow is cool snow is fun", user_id: user4.id)
# equip8.photo.attach(io: URI.open('https://res.cloudinary.com/dbzj7fllo/image/upload/v1645545208/development/rsaaygbf7j5ttyibnidqbgdxcpay.jpg'),
#                     filename: 'snowboard.jpg', content_type: 'image/png')
# equip8.save
# equip9 = EquipmentItem.create(category: "Accessories", description: "Frosty is coming", user_id: user5.id)
# equip9.photo.attach(io: URI.open('https://res.cloudinary.com/dbzj7fllo/image/upload/v1645545221/development/wbgkhyvjwr7h0f1yl79id32ze61u.jpg'),
#                     filename: 'helmet.jpg', content_type: 'image/png')
# equip9.save
# equip10 = EquipmentItem.create(category: "Snowboarding", description: "Snow sucks", user_id: user5.id)
# equip10.photo.attach(io: URI.open('https://res.cloudinary.com/dbzj7fllo/image/upload/v1645545208/development/rsaaygbf7j5ttyibnidqbgdxcpay.jpg'),
#                     filename: 'snowboard.jpg', content_type: 'image/png')
# equip10.save
