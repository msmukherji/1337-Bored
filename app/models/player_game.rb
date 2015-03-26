class PlayerGame < ActiveRecord::Base
  belongs_to :user
  belongs_to :game

  def populate_join(game_params)
    players = game_params[:players]
    players.each do |player|
      self.create!(user_id: player.id, game_id: game_params[:id], 
        score: player["score"])
    end
  end
end