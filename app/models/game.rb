class Game < ActiveRecord::Base
  has_many :player_games
  has_many :users, through: :player_games

  serialize :players, JSON
  serialize :loser, JSON
end