# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

UserPokemon.destroy_all
UserPokemon.reset_pk_sequence
User.destroy_all
User.reset_pk_sequence

test_user = User.create(name: "Mollymon", email:"molly@weenz.com", password:"pass123")

20.times do
  UserPokemon.create(user_id:test_user.id, pokemon_id:Pokemon.pluck(:id).sample, times_matched:rand(3..10), times_caught:rand(0..3))
end

puts "test user seeded!"