class AddAssignment < ActiveRecord::Migration

  def change
    create_table :apps do |t|
      t.string :nam
      t.string :url
    end

    create_table :roles do |t|
      t.string :name
      t.string :public_name
      t.belongs_to :app, index: true
    end

    create_table :assignments do |t|
      t.belongs_to :user, index: true
      t.belongs_to :role, index: true
    end
  end

end
