class MakeDefaultValueForWeakqualityColumn < ActiveRecord::Migration

  def change
    change_column_default :regforms, :weak_quality, 0
  end

end
