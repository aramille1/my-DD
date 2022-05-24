# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
require 'date'
require 'faker'

# Examples:
#
# User.destroy_all
# DrivingOffer.destroy_all
10.times do
  user1 = User.new(
    first_name: Faker::Name.first_name ,
    second_name: Faker::Name.last_name ,
    email: Faker::Internet.email,
    address: Faker::Address.full_address,
    password: "123456")
  user1.save!
  offer1 = DrivingOffer.new(
    start_time: Date.today,
    end_time: Date.tomorrow,
    price: rand(1..100),
    qualification: 'AB',
    experience: rand(1..10),
    event_address: Faker::Address.full_address,
    event_name: Faker::Music.genre
  )
  offer1.user = user1 #offer1.user_id = user1.id
offer1.save!
end





# User.create(name: "Luke", movie: movies.first)
