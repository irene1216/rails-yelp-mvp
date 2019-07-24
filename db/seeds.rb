Restaurant.destroy_all if Rails.env.development?

CATEGORY = %w(chinese italian japanese french belgian)
5.times do
  Restaurant.create!(name: Faker::Kpop.i_groups,
                    phone_number: Faker::PhoneNumber.phone_number,
                    address: Faker::Address.street_name,
                    category: CATEGORY.sample)
end
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# rails generate model Restaurant name:string address:string phone_number:string category:string
# rails generate model Review content:text rating:integer Restaurant:reference
