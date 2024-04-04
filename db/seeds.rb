# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

puts "Clearing database..."
Movie.destroy_all
User.destroy_all

puts "Database cleared!"
puts "Creating user..."
User.create!(
  first_name: "Test",
  last_name: "Test1",
  email: "test@test.com",
  password: "123456"
)
puts "Creating movies..."

Movie.create(
    title: "The Shawshank Redemption",
    genre: "Drama",
    director: "Frank Darabont",
    year: 1994,
    description: "super film",
    casting: "Tim Robbins, Morgan Freeman",
    duration: "2h22",
    trailer: "https://www.youtube.com/watch?v=6hB3S9bIaco",
    image: "https://fr.web.img6.acsta.net/pictures/19/06/04/10/58/3953487.jpg",
    plateform: "Netflix"
)
puts "Movies created!"