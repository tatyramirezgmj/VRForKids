class GameSessionController < ApplicationController
  def start
    @session = GameSession.new
  end

  def store
    #store current game session into databse to not be called back again.
  end

  def show
    @sessions = GameSession.all
  end 

end
