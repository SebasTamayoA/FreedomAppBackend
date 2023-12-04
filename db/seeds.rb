# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

# Crear varios usuarios de ejemplo
5.times do |i|
  User.create(
    name: "Usuario#{i + 11}",
    email: "usuario#{i + 11}@example.com",
    password: "password",
    avatar: "https://i.pravatar.cc/300?img=#{i + 12}",
    gender: ['Male', 'Female'].sample,
    gender_preference: ['Male', 'Female', 'Both'].sample,
    age: rand(18..40), # Ajusta el rango según tus necesidades
    country: ['USA', 'Canada', 'UK', 'Mexico'].sample,
    bio: "Biografía de Usuario#{i + 11}",
    is_available: [true, false].sample
  )
end
