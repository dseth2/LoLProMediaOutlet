class PlayerController < ApplicationController
  def new
    @player = Player.new
  end
  def create

  end
  def show
    @player = Player.new(params.require(:player).permit(:name))

  end
end
