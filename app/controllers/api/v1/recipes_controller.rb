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
    user_recipes = Recipe.includes(:ingredients).where(user_id: @user.id)
    if user_recipes
      render :json=> user_recipes.as_json(include: :ingredients, :except => [:user_id]), :status=>200
    else
      render :json=> {:message=>"No recipes found"}, :status=>200
    end
    
  end
  
  # post /recipes
  def create
    params[:recipe][:user_id] = @user.id
    recipe = Recipe.create(params[:recipe].permit!)
    
    if recipe.id
      render :json=> recipe.as_json(include: :ingredients, :except => [:user_id]), status: 200
    else
      render :json=> recipe.errors, :status=>422
    end
  end
  
  # put /recipes/:id
  def update
    # params[:id] is recipe name
    
    recipe = Recipe.find_by_name_and_user_id(params[:id], @user.id)
    puts "updating recipe with #{params[:recipe]}"
    #puts @user
    puts params
    
    if recipe.update_attributes(params[:recipe].permit!)
      render :json=> {:message=>"Recipe successfully updated"}, status: 200
    else
      render :json=> recipe.errors, :status=>422
    end
  end
  
  
end