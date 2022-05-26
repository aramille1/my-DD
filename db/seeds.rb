# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
require 'date'
require 'faker'

# Examples:
#
# User.destroy_all
# DrivingOffer.destroy_all
5.times do
  user1 = User.new(
    name: Faker::FunnyName.name ,
    email: Faker::Internet.email,
    address: Faker::Address.full_address,
    password: "123456")
  user1.save!
  offer1 = DrivingOffer.new(
    price: rand(1..100),
    qualification: 'AB',
    experience: rand(1..10),
    name: Faker::FunnyName.name
  )
  offer1.user = user1 #offer1.user_id = user1.id
  offer1.save!
end

booking = Booking.new(
  start_time: Date.today,
  end_time: Date.today,
  pickup_location: "Templehofer feld",
  pickup_time: "7pm",
  driving_offer_id: 12,
  user_id: current_user
)

booking.save



# User.create(name: "Luke", movie: movies.first)
