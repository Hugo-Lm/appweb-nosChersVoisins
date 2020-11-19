# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'
require "open-uri"


puts "Creating 3 users"
3.times do
  user = User.new(
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    address: Faker::Address.street_name,
    email: Faker::Internet.email,
    password: "abcdef"
  )
  user.save!
end
puts "Users created"



puts "Creating 3 products"

user = User.find(rand(1..3))
product = Product.new(
  name: "Barbecue famillial",
  price: rand(10..20),
  address: user.address,
  user_id: user.id
)
product.save!
file = URI.open('https://images-na.ssl-images-amazon.com/images/I/61ruYjKAARL._AC_SY450_.jpg')
product.photo.attach(io: file, filename: 'barbecue1.jpg', content_type: 'image/jpeg')

user = User.find(rand(1..3))
product = Product.new(
  name: "Racletzor 4000",
  price: rand(10..20),
  address: user.address,
  user_id: user.id
)
product.save!
file = URI.open('https://www.gifi.fr/media/catalog/product/cache/1/image/9df78eab33525d08d6e5fb8d27136e95/5/3/532136.jpg')
product.photo.attach(io: file, filename: 'raclette.jpg', content_type: 'image/jpeg')


user = User.find(rand(1..3))
product = Product.new(
  name: "Barbecue à charbon",
  price: rand(10..20),
  address: user.address,
  user_id: user.id
)
product.save!
file = URI.open('https://images-na.ssl-images-amazon.com/images/I/81iyL9dJtiL._AC_SX466_.jpg')
product.photo.attach(io: file, filename: 'barbecue2.jpg', content_type: 'image/jpeg')

user = User.find(rand(1..3))
product = Product.new(
  name: "Boite à outils",
  price: rand(10..20),
  address: user.address,
  user_id: user.id
)
product.save!
file = URI.open('https://www.bricorama.fr/media/catalog/product/2/2/22cf49e2ebe0f902031b46feb7214d1a86ee2030_3408016.jpg')
product.photo.attach(io: file, filename: 'outils.jpg', content_type: 'image/jpeg')


user = User.find(rand(1..3))
product = Product.new(
  name: "Barbecue tout-en-un",
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



