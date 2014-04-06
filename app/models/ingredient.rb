# == Schema Information
#
# Table name: ingredients
#
#  id          :integer          not null, primary key
#  name        :string(255)
#  description :text
#  category    :string(255)
#  user_id     :integer
#  created_at  :datetime
#  updated_at  :datetime
#

class Ingredient < ActiveRecord::Base
  has_many :recipe_ingredients
  has_many :recipes, through: :recipe_ingredients
  
  VALID_CATEGORIES = %w[hop barley yeast other] # use for "select" tags in forms
  validates :category, :inclusion => VALID_CATEGORIES
end
