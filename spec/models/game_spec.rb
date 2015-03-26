require 'rails_helper'

RSpec.describe Game, type: :model do
  it "can add a game" do
    user = FactoryGirl.create :user
    g = Game.create_game(game_type: "Splendor", players: "Matt", winner: "Matt")
    
    expect(g.game_type).to eq "Splendor"    
  end
end
