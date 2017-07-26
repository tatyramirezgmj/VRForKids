class CreateGameSessions < ActiveRecord::Migration[5.1]
  def change
    create_table :game_sessions do |t|
      t.belongs_to :game, index: true
      t.belongs_to :user, index: true
      t.integer :score

      t.timestamps
    end
  end
end
