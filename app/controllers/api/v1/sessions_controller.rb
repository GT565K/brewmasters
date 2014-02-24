class Api::V1::SessionsController < Api::V1::ApiController

  def create
    user = User.find_by_email(params[:user][:email])
    if user && user.valid_password?(params[:user][:password])
      user.renew_token
      return render :json=> {:auth_token => user.auth_token }, :status => 200
    end
    invalid_login_attempt
  end
  
  def destroy
    
    user = User.find_by_auth_token(params[:user][:auth_token])
    if user
      user.update_attribute(:auth_token, nil)
      return render :json=> {:message => "Successfully logged out" }, :status => 200
    end
    
    render :json=> {:success=>false, :message=>"Invalid auth_token"}, :status=>401
  end
 
  protected 
  def invalid_login_attempt
    render :json=> {:success=>false, :message=>"Error with your login or password"}, :status=>401
  end
end
