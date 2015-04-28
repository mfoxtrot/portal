class LinkUserToSalon < ActiveRecord::Migration
  def change
    create_table(:link_user_to_salons) do |t|
      t.integer :user_id, null: false
      t.integer :salon_id, null: false
    end
  end
end
