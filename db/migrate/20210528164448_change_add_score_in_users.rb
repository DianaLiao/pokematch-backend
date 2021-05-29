class ChangeAddScoreInUsers < ActiveRecord::Migration[6.1]
  def change
    change_column :users, :total_score, :integer, :default => 0
    #Ex:- change_column("admin_users", "email", :string, :limit =>25)
  end
end
