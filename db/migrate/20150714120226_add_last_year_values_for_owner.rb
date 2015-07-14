class AddLastYearValuesForOwner < ActiveRecord::Migration
  def change
    add_column :cardowners, :last_year_sum, :integer
    add_column :cardowners, :last_year_docs, :integer
    add_column :cardowners, :preferable_brands, :string
    add_column :cardowners, :preferable_sizes, :string
    add_column :disccards, :activity, :boolean
  end
end
