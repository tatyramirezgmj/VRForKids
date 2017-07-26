class GameSession < ApplicationRecord
  belongs_to :games
  belongs_to :users
end
