class CreateHops < ActiveRecord::Migration
  def change
    create_table :hops do |t|
      t.string :name
      t.integer :version
      t.string :origin
      t.float :alpha
      t.text :notes
      t.string :type
      t.string :form
      t.float :beta
      t.float :HSI

      t.timestamps
    end
  end
end
