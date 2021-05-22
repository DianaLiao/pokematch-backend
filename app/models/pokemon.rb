class Pokemon < ApplicationRecord
  has_many  :user_pokemons
  has_many  :users, through: :user_pokemons
  belongs_to  :poketype, optional: true

  def self.game_cards(number_of_cards)

    random_mon = self.all.sample(number_of_cards/2)
    copy_mon = random_mon.dup

    response_mon = random_mon + copy_mon
    response_mon.shuffle!

    card_ids = (1..response_mon.length).to_a
    
    response = response_mon.map do |mon|
      new_id = card_ids.shift
      
      mon_hash = mon.attributes
      mon_hash[:card_id] = new_id
      mon_hash
    end

    return response
  end

end
