class CreateGames < ActiveRecord::Migration
  def change
    create_table :games do |t|
      t.references :player_1, references: :players
      t.references :player_2, references: :players
    end
  end
end
