class PlayersController < ApplicationController
  def index
    @players = Player.all
    @player = Player.find(session[:player_id])
  end

  def new
    @player = Player.new
  end

  def create
    available_players = Player.where(has_game: false)
    player = Player.new(player_params)
    if available_players.empty?
      player.has_game = false
      opponent = nil
    else
      player.has_game = true
      opponent = available_players.first
    end
    if player.save
      session[:player_id] = player.id
      unless opponent.nil?
        @game = Game.new(player_1_id: player.id, player_2_id: opponent.id)
        opponent.update_attribute(:has_game, true) if @game.save
      end
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