class GameCardSerializer < ActiveModel::Serializer
  attributes  :id, :card_id, :front_sprite, :name
end