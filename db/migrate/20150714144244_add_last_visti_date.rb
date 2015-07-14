class AddLastVistiDate < ActiveRecord::Migration
  def change
    add_column :cardowners, :last_visti, :date
  end
end
