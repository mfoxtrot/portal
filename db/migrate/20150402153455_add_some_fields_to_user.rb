class AddSomeFieldsToUser < ActiveRecord::Migration
  def change
    add_column :users, :user_name, :string
    add_column :users, :user_lastname, :string
  end
end
