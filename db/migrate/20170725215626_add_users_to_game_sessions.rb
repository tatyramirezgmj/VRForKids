class AddUsersToGameSessions < ActiveRecord::Migration[5.1]
  def change
    add_reference :game_sessions, :users, index: true
  end
end
