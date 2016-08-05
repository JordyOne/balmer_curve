class CreatePlayersTable < ActiveRecord::Migration
  def change
    create_table :players_tables do |t|
      t.string :name
    end
  end
end
