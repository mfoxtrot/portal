class LinkChildrenToCardOwner < ActiveRecord::Migration
  def change
  	add_column :disccards, :card_owner_id, :integer
  end
end
