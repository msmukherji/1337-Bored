json.player do
	json.name @player.name
	json.email @player.email
	json.bio @player.bio
	json.wins @player.games_won.count
	json.losses @player.games.count - @player.games_won.count
end

