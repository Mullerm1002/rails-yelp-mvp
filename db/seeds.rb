# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts 'Cleaning database...'
Restaurant.destroy_all

puts 'Creating restaurants...'
dishoom = { name: 'Dishoom', address: '7 Boundary St, London E2 7JE', category: 'belgian' }
pizza_east = { name: 'Pizza East', address: '56A Shoreditch High St, London', category: 'italian' }
pizza_west = { name: 'Pizza West', address: '240B Greenwich, London', category: 'italian' }
pizza_north = { name: 'Pizza North', address: '15C Bloomsbury, London', category: 'italian' }
pizza_south = { name: 'Pizza South', address: '5A Camberwell, London', category: 'italian' }

[dishoom, pizza_east, pizza_west, pizza_north, pizza_south].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts 'Finished!'
