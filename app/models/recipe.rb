# == Schema Information
#
# Table name: recipes
#
#  id                 :integer          not null, primary key
#  user_id            :integer
#  name               :string(255)
#  description        :string(255)
#  yield_size         :float remove
#  boil_temperature   :float remove
#  sparge_temperature :float remove
#  mash_temperature   :float
#  boil_duration      :integer
#  sparge_duration    :integer remove
#  mash_duration      :integer
#  created_at         :datetime
#  updated_at         :datetime
#

# add water_grain_ratio qt/lb
# add beer type
class Recipe < ActiveRecord::Base
  has_many :ingredients
  
  belongs_to :user
  
end
