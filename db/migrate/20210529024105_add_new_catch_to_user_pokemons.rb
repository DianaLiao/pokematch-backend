class AddNewCatchToUserPokemons < ActiveRecord::Migration[6.1]
  def change
    add_column :user_pokemons, :new_catch, :boolean, :default => false
  end
end
