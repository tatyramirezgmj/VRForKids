class AddGameIdToGameSessions < ActiveRecord::Migration[5.1]
  def change
    add_reference :game_sessions, :games, index: true
  end
end
