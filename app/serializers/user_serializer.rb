class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :email, :companion, :pokedex_completion, :number_of_caught_mon

  has_many :user_pokemons
  # has_many :pokemons, through: :user_pokemons
end
