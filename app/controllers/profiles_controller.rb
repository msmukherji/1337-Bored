class ProfilesController < ApplicationController
  def show
  end

  def edit
    @user = current_user
  end

  def update
    @user = current_user
    if @user.update params.require(:user).permit(:location)
      redirect_to edit_profile_path, notice: 'Profile updated'
    else
      render :edit
    end
  end
end