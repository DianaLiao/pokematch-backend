class Pokemon < ApplicationRecord
  has_many  :user_pokemons
  has_many  :users, through: :user_pokemons
  belongs_to  :poketype, optional: true
end
