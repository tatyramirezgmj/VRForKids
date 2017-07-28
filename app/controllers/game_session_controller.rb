class GameSessionController < ApplicationController
  def start
    @session = GameSession.new
  end

  def store
    @session = GameSession.create(session_params)
    @session[:user_id]= current_user.id
    @session[:game_id]= Game.find(params[:id])

    respond_to do |sesh|
      @session.save

      sesh.html { redirect_to sessions_index_path, notice: 'Session Stored.' }
      sesh.json { render :show, status: :created, location: @session }
    end
  end

  def index
    @sessions = GameSession.all
  end


private

  def session_params
    params.require(:game_session).permit(:score)
  end

end
