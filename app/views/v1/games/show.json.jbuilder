json.games @games do |game|
	json.type game.game_type
	json.players game.players
	json.losers game.loser
	json.winner game.winner
end

json.users @users do |user|
	json.name user.email
	json.user_id user.id
end
