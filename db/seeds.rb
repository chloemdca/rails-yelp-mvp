# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
Restaurant.destroy_all
Review.destroy_all

sakura = Restaurant.create!(name: "Sakura", address: "12 George Street, Sydney", phone_number: "0292521234", category: "japanese")
le_petit_bistrot = Restaurant.create!(name: "Le Petit Bistro", address: "45 Pitt Street, Sydney", phone_number: "0292876543", category: "french")
la_trattoria = Restaurant.create!(name: "La Trattoria", address: "78 Norton Street, Leichhardt", phone_number: "0293216789", category: "italian")
maison_de_bruxelles = Restaurant.create!(name: "Maison de Bruxelles", address: "23 King Street, Newtown", phone_number: "0296543210", category: "belgian")
golden_dragon = Restaurant.create!(name: "Golden Dragon", address: "56 Dixon Street, Haymarket", phone_number: "0292134567", category: "chinese")

# Sakura reviews
Review.create!(content: "Best sushi in Sydney, incredibly fresh!", rating: 5, restaurant: sakura)
Review.create!(content: "Lovely atmosphere and great service.", rating: 4, restaurant: sakura)
Review.create!(content: "Way too expensive for the portion sizes.", rating: 2, restaurant: sakura)

# Le Petit Bistro reviews
Review.create!(content: "Amazing French cuisine, felt like Paris!", rating: 5, restaurant: le_petit_bistrot)
Review.create!(content: "Lovely wine selection and great steak.", rating: 4, restaurant: le_petit_bistrot)
Review.create!(content: "Service was very slow and staff were rude.", rating: 1, restaurant: le_petit_bistrot)

# La Trattoria reviews
Review.create!(content: "Best pasta I have ever had, absolutely delicious!", rating: 5, restaurant: la_trattoria)
Review.create!(content: "Great wood-fired pizza, will definitely return.", rating: 4, restaurant: la_trattoria)
Review.create!(content: "Food was bland and the place was very noisy.", rating: 2, restaurant: la_trattoria)

# Maison de Bruxelles reviews
Review.create!(content: "Incredible mussels and frites, so authentic!", rating: 5, restaurant: maison_de_bruxelles)
Review.create!(content: "Great Belgian beers and cosy atmosphere.", rating: 4, restaurant: maison_de_bruxelles)
Review.create!(content: "Portions were tiny and prices are outrageous.", rating: 1, restaurant: maison_de_bruxelles)

# Golden Dragon reviews
Review.create!(content: "Best yum cha in Sydney, always fresh and tasty!", rating: 5, restaurant: golden_dragon)
Review.create!(content: "Great dumplings, very authentic Chinese food.", rating: 4, restaurant: golden_dragon)
Review.create!(content: "Waited 45 minutes and the food was lukewarm.", rating: 2, restaurant: golden_dragon)
