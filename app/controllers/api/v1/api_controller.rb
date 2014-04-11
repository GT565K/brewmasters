class Api::V1::ApiController < ApplicationController
  respond_to :json
  layout false
  skip_before_filter :verify_authenticity_token
  
  def user_auth_token_is_valid
    user_token = params[:auth_token].presence
    @user = User.find_by_auth_token(user_token.to_s)
    return user_token && User.find_by_authentication_token(user_token.to_s)
  end
end
