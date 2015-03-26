module V1
  class GamesController < ApiController
    
    def show
      @games = Game.all
    end

    def add
    end

    def sort
      Game.column_names.include?(params[:sort]) ? params[:sort] : "name"
    end
  end
end