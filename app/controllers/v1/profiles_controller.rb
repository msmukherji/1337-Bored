module V1
  class ProfilesController < ApiController
    
    def show
      @player = User.find(params[:user_id])
    end

    def edit
      @player = User.find(params[:user_id])
      # does john need this for his empty form?  
      # does it need to return json?
    end

    def update
      player = User.find(params[:user_id])
      # @player = player.make_changes => separate method in profile model?
      @player = player.update name: params[:name], bio: params[:bio], email: params[:email]
      # should this one method be in a separate profile model..?
      render :show
    end

  end
end