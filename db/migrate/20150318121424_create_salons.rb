class CreateSalons < ActiveRecord::Migration
  def change
    create_table :salons do |t|
      t.string :name
      t.string :email
      t.string :anketa_folder

      t.timestamps
    end
  end
end
