class GameController < ApplicationController
  def play
    # @games = Game[:id]
  end

  def show
    @game = Game[:id]
  end

  def index
    @games = Game.all
  end

end
