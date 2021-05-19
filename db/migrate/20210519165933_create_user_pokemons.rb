class CreateUserPokemons < ActiveRecord::Migration[6.1]
  def change
    create_table :user_pokemons do |t|
      t.belongs_to :user, null: false, foreign_key: true
      t.belongs_to :pokemon, null: false, foreign_key: true
      t.integer :times_matched, :default => 0
      t.integer :times_caught, :default => 0
      t.datetime :first_caught

      t.timestamps
    end
  end
end
