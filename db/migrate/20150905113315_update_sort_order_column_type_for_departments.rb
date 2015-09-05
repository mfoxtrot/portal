class UpdateSortOrderColumnTypeForDepartments < ActiveRecord::Migration
  def change
    change_table :departments do |t|
      t.change :sort_order, :integer, default: 0
    end
  end
end
