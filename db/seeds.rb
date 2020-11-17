# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'

puts 'Creating 40 fake user, 20 fake products and 20 fake bookings ...'

10.times do
  puts "Creating a user"
  user1 = User.new(
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    address: Faker::Address.street_name,
    email: Faker::Internet.email,
    password: "azertyuiop"
  )
  user1.save!
  puts "User created"
  puts "Creating product for user1"
  product = Product.new(
    name: Faker::Internet.email,
    price: rand(150),
    address: user1.address,
    user_id: user1.id
    )
  puts "Product creatd"
  product.save!
  puts "Creating a user2"
  user2 = User.new(
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    address: Faker::Address.street_name,
    email: Faker::Internet.email,
    password: "Faker::Bitcoin.address"
  )
  user2.save!
  puts "User2 created"
  puts "Create a Booking for user2"
  booking = Booking.new(
    start_date: 0.days.from_now,
    end_date: 2.days.from_now,
    user_id: user2.id,
    product_id: product.id
    )
  puts "Booking created"
  booking.save!
end
