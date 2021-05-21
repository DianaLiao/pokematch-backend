class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :email, :companion_id

  has_many :user_pokemons
  # has_many :pokemons, through: :user_pokemons
end
