class CreateGameSession < ActiveRecord::Migration[5.1]
  def change
    create_table :game_sessions do |t|
      t.belongs_to :user, foreign_key: true
      t.belongs_to :game, foreign_key: true
      t.integer :score

      t.timestamps
    end
  end
end
