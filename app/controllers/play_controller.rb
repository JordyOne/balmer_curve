class PlayController < ApplicationController
  def index
    
  end

  def show
    @game = Game.find_by(player_1_id: params[:id])
    @game ||= Game.find_by(player_2_id: params[:id])
  end

  def new
    @player = Player.new
  end
end
