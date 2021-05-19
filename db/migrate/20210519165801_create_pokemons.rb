class CreatePokemons < ActiveRecord::Migration[6.1]
  def change
    create_table :pokemons do |t|
      t.integer :api_id
      t.string :name
      t.integer :poketype_id
      t.integer :api_type_id
      t.string :front_sprite
      t.string :back_sprite
      t.string :flavor_text
      t.integer :capture_rate
      t.string :color

      t.timestamps
    end
  end
end
