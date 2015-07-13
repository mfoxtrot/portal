class FixCardOwnerLinkError < ActiveRecord::Migration
  def change
  	remove_column :disccards, :card_owner_id
    add_column :disccards, :cardowner_id, :integer
  end
end
