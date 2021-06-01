class AddCompanionNameAndMottoToUsers < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :companion_name, :string, :default => "My Favorite Pokémon"
    add_column :users, :motto, :string, :default => "I want to be the very best, like no one ever was"
  end
end
