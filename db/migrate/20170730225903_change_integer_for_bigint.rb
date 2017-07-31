class ChangeIntegerForBigint < ActiveRecord::Migration[5.1]
  def change
    change_column :game_sessions, :score, :bigint
  end
end
