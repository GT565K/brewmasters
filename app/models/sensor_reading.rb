# == Schema Information
#
# Table name: sensor_readings
#
#  id                         :integer          not null, primary key
#  batch_id                   :integer
#  mash_tun_temperature       :float
#  mash_tun_float             :float
#  boiling_kettle_temperature :float
#  boiling_kettle_float       :float
#  created_at                 :datetime
#  updated_at                 :datetime
#

class SensorReading < ActiveRecord::Base
  belongs_to :batch
end
