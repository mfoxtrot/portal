class LinkUsersToSalons < ActiveRecord::Migration
  def change
    create_table :salons_users, id: false do |t|
      t.belongs_to :salon, index: true
      t.belongs_to :user, index: true
    end
  end
end
