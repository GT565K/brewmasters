# == Schema Information
#
# Table name: batches
#
#  id          :integer          not null, primary key
#  name        :string(255)
#  description :text
#  volume      :float
#  recipe_id   :integer
#  started_at  :datetime
#  created_at  :datetime
#  updated_at  :datetime
#

class Batch < ActiveRecord::Base
  has_one :recipe
  has_one :user, through: :recipe
  
  has_many :sensor_readings
  
end
