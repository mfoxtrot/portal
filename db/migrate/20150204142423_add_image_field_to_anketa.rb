class AddImageFieldToAnketa < ActiveRecord::Migration
  def change
    add_column :anketa, :image_uid, :string
  end
end
