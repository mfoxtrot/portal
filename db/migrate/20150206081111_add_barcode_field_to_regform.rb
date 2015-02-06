class AddBarcodeFieldToRegform < ActiveRecord::Migration
  def change
    add_column :regforms, :barcode, :string
  end
end
