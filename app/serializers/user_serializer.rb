class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :email, :motto, :companion_id, :companion_name, :companion, :pokedex_completion, :number_of_caught_mon, :total_score

  has_many :user_pokemons
  # has_many :pokemons, through: :user_pokemons
end
