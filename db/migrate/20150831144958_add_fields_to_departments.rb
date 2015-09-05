class AddFieldsToDepartments < ActiveRecord::Migration
  def change
    add_column :departments, :phone, :string
    add_column :departments, :department_id, :integer
  end
end
