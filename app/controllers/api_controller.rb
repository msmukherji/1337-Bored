class ApiController < ActionController::Base
  before_action :hardcode_json_format

  # rescue_from StandardError do |e|
  #   render json: {
  #     error: e.message,
  #     location: e.backtrace.first
  #     #backtrace: e.backtrace # if in development?
  #   }, status: 500
  # end

  # rescue_from Token::Invalid do |e|
  #   render json: { error: "Token invalid" }, status: 403
  # end

  # def current_user
  #   return @_current_user if @_current_user
  #   key = params[:access_token]
  #   @_current_user = User.find_by_api_token key
  # end

  def hardcode_json_format
    request.format = :json
  end
end