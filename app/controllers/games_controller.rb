class GamesController < ApplicationController
  def show
    def show
      @game = Game.find_by(player_1_id: params[:id])
      @game ||= Game.find_by(player_2_id: params[:id])

      Player_1  
    end
  end
end