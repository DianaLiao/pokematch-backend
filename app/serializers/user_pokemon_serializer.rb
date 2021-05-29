class UserPokemonSerializer < ActiveModel::Serializer
  attributes :id, :times_matched, :times_caught, :pokemon_id, :pokemon_name, :pokemon_pic, :new_catch
  # belongs_to :user
  belongs_to :pokemon


end
