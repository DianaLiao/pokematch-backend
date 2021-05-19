class PokemonSerializer < ActiveModel::Serializer
  attributes :id, :api_id, :name, :type_id, :front_sprite, :back_sprite, :flavor_text
end
