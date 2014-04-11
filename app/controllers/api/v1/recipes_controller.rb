class Api::V1::RecipesController < Api::V1::UsersController
  before_filter :user_is_present
  
  
  
  # params[:user_id] is user
  
  # get /recipes/:id
  def show
    puts "showing recipe with id: #{params[:id]}"
    puts @user
    puts params
    render nothing: true, status: 200
  end
  
  # get /recipes
  def index
    puts "showing all recipes for user_id #{params[:user_id]}"
    puts @user
    puts params
    render nothing: true, status: 200
    
  end
  
  # post /recipes
  def create
    
    puts "creating recipe with #{params[:recipe]}"
    puts @user
    puts params
    render nothing: true, status: 200
        
  end
  
  # put /recipes/:id
  def update
    # params[:id] is recipe name
    
    puts "updating recipe with #{params[:recipe]}"
    puts @user
    puts params
    render nothing: true, status: 200
    
  end
  
  
end