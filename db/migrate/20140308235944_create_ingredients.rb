class CreateIngredients < ActiveRecord::Migration
  def change
    create_table :ingredients do |t|
      t.string :name
      t.text :description
      t.string :category
      t.integer :user_id

      t.timestamps
    end
  end
end
