class User < ApplicationRecord
  devise :database_authenticatable, #Allows devise to use DB for authentication via model.
    :registerable #allows registration
    # :confirmable, #sends confirmation email
    # :recoverable, #password Recoverable
    # stretches: 12 #hash decrypt speed
        #This is all applied for devise to access the database table. Boo, fucking, hoo.
        #make sure to amend the commas so that it doesn't threw an "Unexpected end" error
  has_many :game_sessions
  has_many :games, :through => :game_sessions
end
