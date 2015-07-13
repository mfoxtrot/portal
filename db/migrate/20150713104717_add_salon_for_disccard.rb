class AddSalonForDisccard < ActiveRecord::Migration
  def change
    add_column :disccards, :salon_id, :integer
  end
end
