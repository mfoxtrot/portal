class AddEmailCheckLog < ActiveRecord::Migration
  def change
    create_table :email_check_result do |t|
      t.belongs_to :cardowner, index: true
      t.string :email
      t.boolean :result
      t.string :comment
    end
  end
end
