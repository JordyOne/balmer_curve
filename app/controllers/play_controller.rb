class PlayController < ApplicationController
  def index
    Player.find(params[:id])
  end

end