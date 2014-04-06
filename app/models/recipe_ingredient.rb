# == Schema Information
#
# Table name: recipe_ingredients
#
#  id            :integer          not null, primary key
#  recipe_id     :integer
#  ingredient_id :integer
#  add_time      :integer
#  amount        :float
#  unit          :string(255)
#  created_at    :datetime
#  updated_at    :datetime
#

class RecipeIngredient < ActiveRecord::Base
  belongs_to :ingredient
  belongs_to :recipe
  
  VALID_UNITS = %w[oz lb tbsp tsp qts cups] # use for "select" tags in forms
  validates :unit, :inclusion => VALID_UNITS
  
end
