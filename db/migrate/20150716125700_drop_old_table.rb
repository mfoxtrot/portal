class DropOldTable < ActiveRecord::Migration
  def change
    drop_table :email_check_result
  end
end
