class GamesController < ApplicationController
 def create
   @game = Game.find_by(player_1_id: session[:player_id])
   @game ||= Game.find_by(player_2_id: session[:player_id])


   redirect_to games_show_path(@game)
 end
  def show
    @game = Game.find(params[:id])

    @player_1 = Player.find(@game.player_1_id)
    @player_2 = Player.find(@game.player_2_id)
  end
end