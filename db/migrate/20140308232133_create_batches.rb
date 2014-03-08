class CreateBatches < ActiveRecord::Migration
  def change
    create_table :batches do |t|
      t.string :name
      t.text :description
      t.float :volume
      t.integer :recipe_id
      t.timestamp :started_at

      t.timestamps
    end
  end
end
