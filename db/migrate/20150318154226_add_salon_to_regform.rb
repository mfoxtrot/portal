class AddSalonToRegform < ActiveRecord::Migration
  def change
    add_column :regforms, :salon, :int
  end
end
