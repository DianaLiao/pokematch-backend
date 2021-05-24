class UserPokemonSerializer < ActiveModel::Serializer
  attributes :id, :times_matched, :times_caught, :pokemon_id
  belongs_to :user
  belongs_to :pokemon


end
