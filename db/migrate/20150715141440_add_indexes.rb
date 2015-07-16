class AddIndexes < ActiveRecord::Migration
  def change
    add_index :cardowners, :place_id, name: 'index_place_on_cardowners'
    add_index :cardowners, :channel_id, name: 'index_channel_on_cardowners'
    add_index :disccards, :cardowner_id, name: 'index_cardowner_on_disccards'
    add_index :disccards, :salon_id, name: 'index_salon_on_disccards'
    add_index :regforms, :salon_id, name: 'index_salon_on_regforms'
  end
end
