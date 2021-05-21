class PokemonSerializer < ActiveModel::Serializer
  attributes :id, :api_id, :name, :front_sprite, :back_sprite, :flavor_text
end
