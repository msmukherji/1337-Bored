module V1
  class ProfilesController < ApiController
    
    def show
      @player = User.find(params[:user_id])
      #@player_wins = @player.games.where(winner: "#{@player.name}").count
      #@player_losses = @player.games.count - @player_wins
    end

    def edit


    end

    def update
    end

  end
end