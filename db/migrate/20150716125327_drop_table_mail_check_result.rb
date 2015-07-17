class DropTableMailCheckResult < ActiveRecord::Migration

  def down
    drop_table :email_check_result
  end

  def up
    create_table :emailchekcresults do |t|
      t.belongs_to :cardowner, index: true
      t.string :email
      t.boolean :result
      t.string :comment
    end
  end
end
