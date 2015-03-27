json.games @games do |game|
	json.type game.game_type
	json.losers game.loser
	json.winner game.winner
	json.date game.updated_at
	json.players game.users do |user|
		json.email user.email
    json.score @scores.where(user_id: user.id).find_by(game_id: game.id).score
  end
end

json.users @users do |user|
	json.name user.email
	json.user_id user.id
	json.wins user.games_won.count
	json.losses user.games.count - user.games_won.count
end