module V1
  class GamesController < ApiController
    
    def show
      @games = Game.all
      @users = User.all
      @scores = PlayerGame.all
    end

    def add
      game_params = params[:game] # params need to include scores
      Game.create_game(game_params[:game_type], game_params[:players], 
        game_params[:winner], game_params[:loser])
      PlayerGame.populate_join(game_params)
    end

    private

    def sort
      if Game.column_names.include?(params[:sort])
        @games = Game.sort_games(params[:sort])
      else
        render json: {error: "invalid sorting parameter"}, status: 404
      end
      render :show
    end

    def filter_type
      @games = Game.filter_type(params[:game])
    end

    def filter_players
      @games = Game.filter_players(params[:player])
    end

  end
end