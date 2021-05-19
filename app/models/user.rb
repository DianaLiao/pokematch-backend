class User < ApplicationRecord
  has_many  :user_pokemons
  has_many  :pokemons, through: :user_pokemons

  has_secure_password

end
