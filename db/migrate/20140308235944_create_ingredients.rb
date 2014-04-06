class CreateIngredients < ActiveRecord::Migration
  def change
    create_table :ingredients do |t|
      t.integer :recipe_id
      t.string :name
      t.string :type
      t.text :description
      t.float :amount
      t.string :unit
      t.integer :add_time
      t.timestamps
    end
  end
end
