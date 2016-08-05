class AddHasGameToPlayers < ActiveRecord::Migration
  def change
    add_column :players, :has_game, :bool
  end
end
