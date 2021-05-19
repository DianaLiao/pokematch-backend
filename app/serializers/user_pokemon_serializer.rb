class UserPokemonSerializer < ActiveModel::Serializer
  attributes :id, :times_matched, :times_caught
  has_one :user
  has_one :pokemon
end
