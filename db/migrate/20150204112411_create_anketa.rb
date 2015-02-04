class CreateAnketa < ActiveRecord::Migration
  def change
    create_table :anketa do |t|
      t.string :name
      t.integer :size
      t.string :type
      t.integer :status
      t.string :original_name

      t.timestamps
    end
  end
end
