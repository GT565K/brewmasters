class Api::V1::RegistrationsController < Api::V1::ApiController
  
  
  def create
    user = User.new(registration_params)
    if user.save
      return render :json=> {:auth_token => user.auth_token }, :status => 201
      #return render :json=> user.as_json(:auth_token=>user.auth_token, :email=>user.email), :status=>201
    else
      render :json=> user.errors, :status=>422
    end
  end
  
private  
  def registration_params
    params.require(:user).permit(:email, :password, :password_confirmation)
  end
  
end
