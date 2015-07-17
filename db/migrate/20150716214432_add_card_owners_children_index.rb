class AddCardOwnersChildrenIndex < ActiveRecord::Migration
  def change
  	add_index :cardownerchildren, :cardowner_id, name: 'index_cardonwerchildren_cardowner'
  end
end
