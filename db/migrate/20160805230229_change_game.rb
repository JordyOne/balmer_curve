class ChangeGame < ActiveRecord::Migration
  def change
    remove_column :games, :player_1_id
    remove_column :games, :player_2_id
    add_reference :games, :user, index: true
    add_column :games, :best_time, :string
  end
end
