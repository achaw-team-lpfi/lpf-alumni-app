# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
100.times do
  Profile.create(
    firstname: Faker::Name.first_name, 
    middlename: Faker::Name.first_name, 
    lastname: Faker::Name.last_name,
    birthdate: Faker::Date.backward(5000),
    address1: Faker::Address.street_address,
    address2: Faker::Address.secondary_address,
    city: Faker::Address.city,
    state: Faker::Address.state_abbr,
    zip: Faker::Address.zip,
    email: Faker::Internet.email,
    homephone: Faker::PhoneNumber.cell_phone,
    workphone: Faker::PhoneNumber.cell_phone,
    cellphone: Faker::PhoneNumber.cell_phone,
    current_city: Faker::Address.city,
    current_state: Faker::Address.state_abbr,
    )
end