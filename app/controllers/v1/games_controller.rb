module V1
  class GamesController < ApiController
    
    def show
      @games = Game.all
    end

    def add
      game_params = params[:game] # params need to include scores
      Game.create_game(game_params[:game_type], game_params[:players], 
        game_params[:winner], game_params[:loser])
      PlayerGame.populate_join(game_params)
    end

    private

    def sort
      @games = Game.sort_games(params[:sort])
      render :show
    end
  end
end