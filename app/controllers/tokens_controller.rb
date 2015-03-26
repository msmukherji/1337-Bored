class TokensController < ApplicationController
  def create
    current_user.generate_api_token!
    redirect_to :back, notice: "Token generated"
  end

  def destroy
    token = current_user.tokens.find params[:id]
    token.disable!
    redirect_to :back, notice: "Token disabled"
  end
end