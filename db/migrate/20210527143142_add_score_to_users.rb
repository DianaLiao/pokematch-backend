class AddScoreToUsers < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :total_score, :integer
  end
end
