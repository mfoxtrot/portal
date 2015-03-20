class RepairWrongFieldName < ActiveRecord::Migration
  def change
    remove_column :regforms, :salon
    add_column :regforms, :salon_id, :int
  end
end
