class PlayersController < ApplicationController
  def index
    @players = Player.all
    @player = Player.find(session[:player_id])
  end

  def new
    @player = Player.new
  end

  def create
    player = Player.new(player_params)
    if player.save
      session[:player_id] = player.id
      redirect_to players_path
    else
      render json: {errors: player.errors.full_errors}, status: :bad_request
    end

  end

  private
  def player_params
    params.require(:player).permit(:name)
  end
end