# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
brandon_sanderson = Author.find_or_create_by(name: 'Brandon Sanderson', deceased: false, age: 47)
robert_jordan = Author.find_or_create_by(name: 'Robert Jordan', deceased: false, age: 56)



Book.create(
  title: 'The Way of Kings',
  genre: 'Fantasy',
  is_published: true,
  publication_year: 2010,
  author: brandon_sanderson
)

Book.create(
  title: 'The Eye of the World',
  genre: 'Fantasy',
  is_published: true,
  publication_year: 1990,
  author: robert_jordan
)

puts "Seed data created successfully!"
