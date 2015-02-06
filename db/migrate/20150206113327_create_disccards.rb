class CreateDisccards < ActiveRecord::Migration
  def change
    create_table :disccards do |t|
      t.string :number
      t.string :barcode
      t.string :type
      t.string :client_name
      t.string :client_phone
      t.integer :regform

      t.timestamps
    end
  end
end
