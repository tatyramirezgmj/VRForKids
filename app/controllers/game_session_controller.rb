class GameSessionController < ApplicationController
  skip_before_action :verify_authenticity_token
  def start
    @session = GameSession.new
  end

  def store
    @session = GameSession.new(session_params)
    @session.user_id = current_user.id
    @session.game_id = params[:id]

    respond_to do |sesh|
      @session.save!

      sesh.html { redirect_to sessions_index_path, notice: 'Session Stored.' }
      sesh.json { render :show, status: :created, location: @session }
    end
  end

  def update_score

    game = GameSession.new

    user_id = 1 #current_user.id -> need to be fixed


    game.user_id = user_id
    game.game_id = params[:id]
    game.score = params[:score]
    game.save!

    scores = GameSession.where(user_id: user_id, game_id: params[:id]).map(&:score).compact.inject(:+)
    render json: { is_success: true, score: scores }
  end

  def get_score
    user_id = 1 #current_user.id -> need to be fixed
    scores = GameSession.where(user_id: user_id, game_id: params[:id]).map(&:score).compact.inject(:+)
    render json: { is_success: true, score: scores }

  end

  def statistics
    render stats_path
  end

  def index
    @sessions = GameSession.all
  end


private

  def session_params
    params.require(:game_session).permit(:score, :user_id, :game_id)
  end

end
