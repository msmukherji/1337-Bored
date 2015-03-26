FactoryGirl.define do
  factory :game do
    game_type {["splendor", "battleship", "monopoly", "poker"].sample}
    players "john"
  end

end
