class CreateRegforms < ActiveRecord::Migration
  def change
    create_table :regforms do |t|
      t.integer :status
      t.string :image_uid

      t.timestamps
    end
  end
end
