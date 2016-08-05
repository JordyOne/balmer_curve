class Changecolumns < ActiveRecord::Migration
  def change
    remove_reference :games, :user, index: true
    add_reference :games, :player, index: true

  end
end
