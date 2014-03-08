class CreateSensorReadings < ActiveRecord::Migration
  def change
    create_table :sensor_readings do |t|
      t.integer :batch_id
      t.float :mash_tun_temperature
      t.float :mash_tun_float
      t.float :boiling_kettle_temperature
      t.float :boiling_kettle_float

      t.timestamps
    end
  end
end
