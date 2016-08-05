class PlayController < ApplicationController
  def index
    
  end

  def new
    @player = Player.new
  end
end
