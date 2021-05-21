# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

# 10.times do
  # Activity.create(
  #   name: Faker::Company.name,
  #   ecoins: Faker::Number.within(range: 10..50),
  #   description: Faker::Lorem.sentence
  # )
  # Organization.create(
  #   name: Faker::Company.name,
  #   ecoins: Faker::Number.within(range: 10..100)
  # )
# end
ids = [3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 1]

ids.each do |org_id|
  organization = Organization.find(org_id)
  course = Course.take

  5.times do |z|
    User.create(
      organization: organization,
      course: course,
      first_name: Faker::Name.first_name,
      last_name: Faker::Name.last_name,
      email: "test#{org_id}#{z}@gmail.com",
      password: '123456',
      ecoins: Faker::Number.within(range: 10..50)
    )
  end
end
