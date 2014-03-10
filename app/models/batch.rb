class Batch < ActiveRecord::Base
  has_one :recipe
  has_one :user, through: :recipe
  
  has_many :sensor_readings
  
end
