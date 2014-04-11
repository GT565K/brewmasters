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
    # puts @user
    # puts params
    
    user_recipes = Recipe.includes(:ingredients).where(user_id: @user.id)
    #render nothing: true, status: 200
    if user_recipes
      #.to_json(:include => :ingredients)
      render :json=> user_recipes.as_json(:except => [:id, :user_id]), :status=>200
    else
      render :json=> {:message=>"No recipes found"}, :status=>200
    end
    
  end
  
  # post /recipes
  def create
    
    puts "creating recipe with #{params[:recipe]}"
    
    # set user_id from found user
    params[:recipe][:user_id] = @user.id
    
    recipe = Recipe.create(params[:recipe].permit!)
    
    if recipe
      render :json=> {:message=>"Recipe successfully created"}, status: 200
    else
      render :json=> recipe.errors, :status=>422
    end
        
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