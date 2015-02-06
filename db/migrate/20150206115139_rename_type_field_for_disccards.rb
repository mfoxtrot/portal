class RenameTypeFieldForDisccards < ActiveRecord::Migration
  def change
    rename_column :disccards, :type, :disccard_type
  end
end
