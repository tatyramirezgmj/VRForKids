class CreateGameSessions < ActiveRecord::Migration[5.1]
  def change
    create_table :game_sessions do |t|
      t.integer :playtime
      t.datetime :date
      t.integer :score

      t.timestamps
    end
  end
end
