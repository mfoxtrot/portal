class AddCardOwnerModel < ActiveRecord::Migration
  def change
  	create_table :places do |t|
  	  t.string :place_name
  	end

  	create_table :channels do |t|
  	  t.string :channel_name
  	end

  	create_table :cardowners do |t|
      t.string :fam
      t.string :name
      t.string :otch
      t.date :date_of_birth
      t.string :cellphone
      t.string :email
      t.boolean :pregnant
      t.boolean :allow_sms
      t.boolean :allow_email
      t.boolean :dont_bother
      t.integer :place_id
      t.integer :channel_id
      t.string :another_channel
      t.timestamps
    end

    create_table :cardownerchildren do |t|
      t.integer :cardowner_id
      t.string :child_name
      t.date :date_of_birth
    end
  end
end
