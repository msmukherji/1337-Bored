module V1
  class GamesController < ApiController
    def create
      @user = User.create email: params[:email]
      redirect_to v1_leaderboard_path
    end
  end
end