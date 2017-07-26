class RemoveDateFromGameSessions < ActiveRecord::Migration[5.1]
  def change
    remove_column :game_sessions, :date, :datetime
    remove_column :game_sessions, :playtime, :integer
  end
end
