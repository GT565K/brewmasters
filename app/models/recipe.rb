# == Schema Information
#
# Table name: recipes
#
#  id                 :integer          not null, primary key
#  user_id            :integer
#  name               :string(255)
#  description        :string(255)
#  yield_size         :float
#  boil_temperature   :float
#  sparge_temperature :float
#  mash_temperature   :float
#  boil_duration      :integer
#  sparge_duration    :integer
#  mash_duration      :integer
#  created_at         :datetime
#  updated_at         :datetime
#

class Recipe < ActiveRecord::Base
  has_many :recipe_ingredients
  has_many :ingredients, through: :recipe_ingredients
  
  belongs_to :user
  
end
