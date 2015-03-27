class Game < ActiveRecord::Base
  has_many :player_games
  has_many :users, through: :player_games

  serialize :players, JSON
  serialize :loser, JSON

  def self.create_game(type, players, winner, loser=nil)
    self.create!(game_type: type, players: players, winner: winner, loser: loser)
  end

  def sort_games(param)
    Game.order(param)
  end

  def filter_type(param)
    Game.where(game_type: param[:game_type])
  end

  def filter_players(param)
    User.where(id: param[:id]).games
  end

end