class CreateRecipes < ActiveRecord::Migration
  def change
    create_table :recipes do |t|
      t.integer :user_id
      t.string :name
      t.string :description
      t.float :water_grain_ratio
      t.string :beer_type
      #t.float :yield_size
      #t.float :boil_temperature
      #t.float :sparge_temperature
      t.float :mash_temperature
      t.integer :boil_duration
      #t.integer :sparge_duration
      t.integer :mash_duration

      t.timestamps
    end
  end
end
