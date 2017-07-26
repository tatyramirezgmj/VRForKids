class RemoveUsersFromGames < ActiveRecord::Migration[5.1]
  def change
    remove_column :games, :user_id, :integer, index: true
  end
end
