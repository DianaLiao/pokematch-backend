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

test_user = User.create(name: "Mollymon", email:"molly@weenz.com", password:"pass123", total_score:1500)
complete_dex_user = User.create(name:"Pokemon Master", email:"pokemonmaster99@yahoo.com", password:"pass123", total_score: 200000)

15.times do 
  User.create(name:Faker::Name.first_name, email: Faker::Internet.unique.email, password:"pass123", total_score:rand(1..20)*50)  
end

puts "test users seeded!"

30.times do
  UserPokemon.create(user_id:test_user.id, pokemon_id:Pokemon.pluck(:id).sample, times_matched:rand(3..10), times_caught:rand(0..3))
end

150.times do
  UserPokemon.create(user_id:rand(3..User.last.id), pokemon_id:Pokemon.pluck(:id).sample, times_matched:rand(3..10), times_caught:rand(0..3))
end

num = Pokemon.first.id
while (num <= Pokemon.all.length)
  UserPokemon.create(user_id: complete_dex_user.id, pokemon_id:num, times_matched: 1, times_caught: 1)
  num += 1
end

puts "test user_pokemons seeded!"

User.all.each {|user| user.update(companion_id: user.pokemons.pluck(:id).sample)}

puts "assigned random companions!"