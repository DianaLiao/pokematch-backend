class User < ApplicationRecord
  has_many  :user_pokemons, dependent: :destroy
  has_many  :pokemons, through: :user_pokemons
  belongs_to  :companion, class_name: "Pokemon", optional: true

  validates :email, uniqueness: true

  has_secure_password

  def owned_pokemon_ids
    self.user_pokemons.map{|mon| mon.pokemon_id}
  end

  def pokedex_completion
    "#{number_of_caught_mon} / #{Pokemon.all.length}"
  end

  def number_of_caught_mon
    user_pokemons.where("times_caught > 0").length
  end

  def self.top_ten
    ranked_users = User.all.sort{|a,b| b.number_of_caught_mon - a.number_of_caught_mon}
    if ranked_users.length > 10
      return ranked_users.first(10)
    else
      return ranked_users
    end
  end

end
