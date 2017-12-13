# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


#User.destroy_all
diana = User.create!(
  email: 'diana@codaisseur.com',
  password: '123456'
)

Event.create!(
  name: "Charity",
  description: "Charity for third world country.",
  capacity: 200,
  location: "Colon 58, 1B, 11100 Cadiz (Spain)",
  includes_food: false,
  includes_drinks: true,
  starts_at: 2,
ends_at: 3,
  price: 100,
  active: true,
  user: diana)
)
