class RecipeIngredient < ActiveRecord::Base
  belongs_to :ingredient
  belongs_to :recipe
  
  VALID_UNITS = %w[oz lb tbsp tsp qts cups] # use for "select" tags in forms
  validates :unit, :inclusion => VALID_UNITS
  
end
