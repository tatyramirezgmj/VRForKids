class AddDefaultScoreValue < ActiveRecord::Migration[5.1]
  def change
    change_column :games, :score, :integer, default: 0
  end
end
