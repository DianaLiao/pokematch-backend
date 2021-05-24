class UserPokemon < ApplicationRecord
  belongs_to :user
  belongs_to :pokemon

  def pokemon_name
    self.pokemon.name
  end

  def pokemon_pic
    self.pokemon.front_sprite
  end

end
