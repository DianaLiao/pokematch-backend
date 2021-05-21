class User < ApplicationRecord
  has_many  :user_pokemons
  has_many  :pokemons, through: :user_pokemons

  validates :email, uniqueness: true

  has_secure_password

  def owned_pokemon_ids
    self.user_pokemons.map{|mon| mon.pokemon_id}
  end

end
