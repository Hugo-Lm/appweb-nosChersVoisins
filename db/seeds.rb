# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'

puts 'Creating 10 fake user, 10 fake products and 10 fake bookings ...'

puts "Creating a user1"

3.times do
  user1 = User.new(
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    address: Faker::Address.street_name,
    email: Faker::Internet.email,
    password: "azertyuiop"
  )
  user1.save!
end

puts "User created"

puts "Creating products"
3.times do
  user = User.find(rand(1..3))
  product = Product.new(
    name: Faker::Drone.name ,
    price: rand(150),
    address: user.address,
    user_id: user.id
  )
  product.save!
end
puts "Product creatd"

puts "Create a Booking"
3.times do
  booking = Booking.new(
    start_date: 0.days.from_now,
    end_date: 2.days.from_now,
    user_id: rand(1..3),
    product_id: rand(1..3)
    )
  booking.save!
end
puts "Booking created"



