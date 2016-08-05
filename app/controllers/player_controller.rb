class PlayerController < ApplicationController
  def new
    @player = Player.new
  end
end