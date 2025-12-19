# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
# db/seeds.rb

# Clear existing data (optional - useful for resetting)
Recipe.destroy_all
User.destroy_all

# --- Users ---
puts "Creating users..."

admin = User.create!(
  name: "Admin User",
  email: "admin@test.com",
  password: "password",
  admin: true
)

user1 = User.create!(
  name: "Maria Santos",
  email: "maria@test.com",
  password: "password",
  admin: false
)

user2 = User.create!(
  name: "Tony Ramirez",
  email: "tony@test.com",
  password: "password",
  admin: false
)

puts "Users created!"

# --- Recipes ---
puts "Creating recipes..."

recipes = [
  { title: "Chamorro Red Rice", chef: "Chef Juan", img: 1 },
  { title: "Garlic Butter Shrimp", chef: "Chef Maria", img: 2 },
  { title: "Beef Tinaktak", chef: "Chef Tony", img: 3 },
  { title: "Chicken Kelaguen", chef: "Chef Lina", img: 4 },
  { title: "BBQ Short Ribs", chef: "Chef Ray", img: 5 },
  { title: "Lumpia", chef: "Chef Ann", img: 6 }
]

recipes.each do |recipe_data|
  Recipe.create!(
    title: recipe_data[:title],
    chef: recipe_data[:chef],
    image_url: "https://picsum.photos/640/480?random=#{recipe_data[:img]}",
    user: [admin, user1, user2].sample  # randomly assign an owner
  )
end

puts "Recipes created!"
puts "Seeding complete!"