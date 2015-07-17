class FixTableName < ActiveRecord::Migration
  def change
    create_table :emailcheckresults do |t|
      t.belongs_to :cardowner, index: true
      t.string :email
      t.boolean :result
      t.string :comment
    end

    drop_table :emailchekcresults

  end
end
