class AddCorrectLastVistiDate < ActiveRecord::Migration
  def change
    remove_column :cardowners, :last_visti
    add_column :cardowners, :last_visit, :date
  end
end
