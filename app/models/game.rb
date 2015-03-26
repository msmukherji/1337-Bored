class Game < ActiveRecord::Base
  has_many :player_games
  has_many :users, through: :player_games

  serialize :players, JSON
  serialize :loser, JSON

  def self.create_game(type, players, winner, losers=nil)
    self.create!(game_type: type, players: players, 
      winner: winner, losers: losers)
  end
end