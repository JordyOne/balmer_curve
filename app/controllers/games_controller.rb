class GamesController < ApplicationController
  def create
    @game = Game.new(player_id: session[:player_id])
    if @game.save
      redirect_to game_path(@game)
    end
  end

  def show
    @game = Game.find_by(player_id: session[:player_id])

    @player = Player.find(@game.player_id)
  end
end