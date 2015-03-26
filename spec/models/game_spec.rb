require 'rails_helper'

RSpec.describe Game, type: :model do
  it "can add a game" do
    g = Game.create_game 'Splendor', ['Matt', 'Mishka', 'John'], 'Matt'
    
    expect(g.game_type).to eq "Splendor"  
  end

  # it "games can be sorted" do
  #   10.times do
  #     FactoryGirl.create :game
  #   end

  #   games = Game.all.sort_games(game_type)

  #   expect(games.first.game_type).to eq "battleship"
  # end

end
