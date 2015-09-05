class UpdateDeparmentNamFieldName < ActiveRecord::Migration
  def change
    rename_column :departments, :nam, :name
  end
end
