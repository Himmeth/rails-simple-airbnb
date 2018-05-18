require 'faker'

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
8.times do
  flat = Flat.new(name: "#{Faker::Hobbit.character}'s home", address: Faker::Hobbit.location, description: Faker::Fallout.quote , price_per_night: rand(0..900), number_of_guests: rand(0..20))
  flat.save
end
