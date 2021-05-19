class CreatePoketypes < ActiveRecord::Migration[6.1]
  def change
    create_table :poketypes do |t|
      t.string :name
      t.integer :api_id

      t.timestamps
    end
  end
end
