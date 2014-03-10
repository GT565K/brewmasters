class Ingredient < ActiveRecord::Base
  has_many :recipe_ingredients
  has_many :recipes, through: :recipe_ingredients
  
  VALID_CATEGORIES = %w[hop barley yeast other] # use for "select" tags in forms
  validates :category, :inclusion => VALID_CATEGORIES
end
