class RenameRegformToRegformId < ActiveRecord::Migration
  def change
    rename_column :disccards, :regform, :regform_id
  end
end
