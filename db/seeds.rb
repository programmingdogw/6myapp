# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


User.create!(name:  "Example User watawata",
  email: "watawataexample@railstutorial.org",
  password:              "foobarwatawata",
  password_confirmation: "foobarwatawata",
  birthdate: '1985-08-17',
  deathdate: '2050-11-19',
  sleepingtime: '7.0',
  commutingtime: '1.0',
  workingtime: '8.0',
  admin:true)

# 99.times do |n|
# name  = Faker::Name.name
# email = "example-#{n+1}@railstutorial.org"
# password = "password"
# User.create!(name:  name,
#     email: email,
#     password:              password,
#     password_confirmation: password)
# end