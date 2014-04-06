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
  
  belongs_to :recipe
  
  VALID_TYPES = %w[hop barley yeast other] # use for "select" tags in forms
  validates :type, :inclusion => VALID_TYPES
  
  VALID_UNITS = %w[oz lb tbsp tsp qts cups] # use for "select" tags in forms
  validates :unit, :inclusion => VALID_UNITS
end
