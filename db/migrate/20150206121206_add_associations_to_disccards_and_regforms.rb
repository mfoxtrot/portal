class AddAssociationsToDisccardsAndRegforms < ActiveRecord::Migration

  def change
    add_column :regforms, :disccard_id, :integer
  end
end
