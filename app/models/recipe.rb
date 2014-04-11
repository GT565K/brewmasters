# == Schema Information
#
# Table name: recipes
#
#  id                :integer          not null, primary key
#  user_id           :integer
#  name              :string(255)
#  description       :string(255)
#  water_grain_ratio :float
#  beer_type         :string(255)
#  mash_temperature  :float
#  boil_duration     :integer
#  mash_duration     :integer
#  created_at        :datetime
#  updated_at        :datetime
#

# add water_grain_ratio qt/lb
# add beer type
class Recipe < ActiveRecord::Base
  has_many :ingredients
  
  belongs_to :user
  
end
