class Api::V1::UsersController < Api::V1::ApiController
  #before_filter :user_is_present
  
  
  def user_is_present
    @user = User.find_by_auth_token(params[:user_id])
    
    unless @user.present?
      forbid
    end
  end
end
