class AddSomeFieldsForApps < ActiveRecord::Migration
  def change
    add_column :apps, :enabled, :boolean
    add_column :apps, :admin_only, :boolean
    add_column :apps, :hidden, :boolean
  end
end
