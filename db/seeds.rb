# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'
require "open-uri"

Booking.destroy_all
Product.destroy_all
User.destroy_all


puts "Creating 3 users"

user1 = User.new(
  first_name: "Eric",
  last_name: Faker::Name.last_name,
  address: Faker::Address.street_name,
  email: Faker::Internet.email,
  password: "abcdef"
)
user1.save!
file = URI.open('https://www.sardiniauniqueproperties.com/wp-content/uploads/2015/10/square-profile-pic-2.jpg')
user1.photo.attach(io: file, filename: 'user1.jpg', content_type: 'image/jpeg')

user2 = User.new(
  first_name: "Francis",
  last_name: Faker::Name.last_name,
  address: Faker::Address.street_name,
  email: Faker::Internet.email,
  password: "abcdef"
)
user2.save!
file = URI.open('https://worldbusinessfitness.com/wp-content/uploads/2018/01/opulent-profile-square-07.jpg')
user2.photo.attach(io: file, filename: 'user2.jpg', content_type: 'image/jpeg')

user3 = User.new(
  first_name: "Natasha",
  last_name: Faker::Name.last_name,
  address: Faker::Address.street_name,
  email: Faker::Internet.email,
  password: "abcdef"
)
user3.save!
file = URI.open('https://worldbusinessfitness.com/wp-content/uploads/2018/06/opulent-profile-square-06.jpg')
user3.photo.attach(io: file, filename: 'user3.jpg', content_type: 'image/jpeg')

user4 = User.new(
  first_name: "Jean-Michel",
  last_name: "Lopez",
  address: "12 rue de Tourcoing",
  email: "michou@mail.fr",
  password: "abcdef"
)
user4.save!
file = URI.open('https://images.squarespace-cdn.com/content/v1/53af1c83e4b0b3e1fc2000bd/1446397787787-SI1H06DNOL2QJSX13DCD/ke17ZwdGBToddI8pDm48kOyctPanBqSdf7WQMpY1FsRZw-zPPgdn4jUwVcJE1ZvWQUxwkmyExglNqGp0IvTJZUJFbgE-7XRK3dMEBRBhUpwwQIrqN0bcqL_6-iJCOAA0qwytzcs0JTq1XS2aqVbyK6GtMIM7F0DGeOwCXa63_4k/Randy+Krum+Profile+Photo+square.jpg')
user4.photo.attach(io: file, filename: 'user4.jpg', content_type: 'image/jpeg')


puts "Users created"



puts "Creating 5 products"

user = user2
product = Product.new(
  name: "Barbecue famillial",
  description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.",
  price: rand(10..20),
  address: user.address,
  user_id: user.id
)
product.save!
file = URI.open('https://images-na.ssl-images-amazon.com/images/I/61ruYjKAARL._AC_SY450_.jpg')
product.photo.attach(io: file, filename: 'barbecue1.jpg', content_type: 'image/jpeg')

user = user3
product = Product.new(
  name: "Racletzor 4000",
  description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.",
  price: rand(10..20),
  address: user.address,
  user_id: user.id
)
product.save!
file = URI.open('https://www.gifi.fr/media/catalog/product/cache/1/image/9df78eab33525d08d6e5fb8d27136e95/5/3/532136.jpg')
product.photo.attach(io: file, filename: 'raclette.jpg', content_type: 'image/jpeg')


user = user3
product = Product.new(
  name: "Barbecue à charbon",
  description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.",
  price: rand(10..20),
  address: user.address,
  user_id: user.id
)
product.save!
file = URI.open('https://images-na.ssl-images-amazon.com/images/I/81iyL9dJtiL._AC_SX466_.jpg')
product.photo.attach(io: file, filename: 'barbecue2.jpg', content_type: 'image/jpeg')

user = user2
product = Product.new(
  name: "Boite à outils",
  description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.",
  price: rand(10..20),
  address: user.address,
  user_id: user.id
)
product.save!
file = URI.open('https://www.bricorama.fr/media/catalog/product/2/2/22cf49e2ebe0f902031b46feb7214d1a86ee2030_3408016.jpg')
product.photo.attach(io: file, filename: 'outils.jpg', content_type: 'image/jpeg')


user = user1
product = Product.new(
  name: "Barbecue tout-en-un",
  description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.",
  price: rand(10..20),
  address: user.address,
  user_id: user.id
)
product.save!
file = URI.open('https://walibuy-product.s3.eu-west-1.amazonaws.com/3372/fr-fr/base/barbecue-charbon-alfred-noir-et-gris-cuve-emaillee-tablettes-laterales-bois-hauteur-de-grille-ajustable-ed0ab376410abc02b524f13053b55696.jpeg')
product.photo.attach(io: file, filename: 'barbecue3.jpg', content_type: 'image/jpeg')

puts "Products created"



puts "Create a Booking"
5.times do
  booking = Booking.new(
    start_date: 0.days.from_now,
    end_date: 2.days.from_now,
    user_id: rand(1..3),
    product_id: rand(1..5)
    )
  booking.save!
end
puts "Booking created"



