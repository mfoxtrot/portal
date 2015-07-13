class AddTbCodeForSalon < ActiveRecord::Migration
  def change
    add_column :salons, :tb_code, :integer
  end
end
