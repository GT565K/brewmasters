# == Schema Information
#
# Table name: ingredients
#
#  id          :integer          not null, primary key
#  recipe_id   :integer
#  name        :string(255)
#  type        :string(255)
#  description :text
#  amount      :float
#  unit        :string(255)
#  add_time    :integer
#  created_at  :datetime
#  updated_at  :datetime
#

class Ingredient < ActiveRecord::Base
  self.inheritance_column = nil
  belongs_to :recipe
  
  VALID_TYPES = %w[hop barley yeast other] # use for "select" tags in forms
  validates :type, :inclusion => VALID_TYPES
  
  VALID_UNITS = %w[oz lb tbsp tsp qts cups] # use for "select" tags in forms
  validates :unit, :inclusion => VALID_UNITS
end
