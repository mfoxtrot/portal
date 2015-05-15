class AddWeakQualityToRegforms < ActiveRecord::Migration
  def change
    add_column :regforms, :weak_quality, :bit
  end
end
