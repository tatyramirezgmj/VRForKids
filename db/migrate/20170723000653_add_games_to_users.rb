class AddGamesToUsers < ActiveRecord::Migration[5.1]
  def change
    add_reference :games, :user, index: true
  end
end
