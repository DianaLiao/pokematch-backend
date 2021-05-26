class UserPokemon < ApplicationRecord
  belongs_to :user
  belongs_to :pokemon

  validates :pokemon_id, uniqueness: { scope: :user_id, message: "relationship already exists" }

  def pokemon_name
    self.pokemon.name
  end

  def pokemon_pic
    self.pokemon.front_sprite
  end

  def determine_capture
    chance = (self.pokemon.capture_rate/255.0) + rand()

    if chance >= 1
      true
    else
      false
    end
  end

end
