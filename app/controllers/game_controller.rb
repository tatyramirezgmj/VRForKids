class GameController < ApplicationController

  def index
    @games = Game.all
  end

  def play
    @game = Game.find(params[:id])
  end

  def show
    @game = Game.find(params[:id])
  end

  def game_params
    params.require(:game).permit(:title, :body, :url)
  end
end
