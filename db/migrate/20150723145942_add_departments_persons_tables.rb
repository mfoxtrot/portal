class AddDepartmentsPersonsTables < ActiveRecord::Migration
  def change
  	create_table :departments do |t|
  		t.string :nam
  		t.string :sort_order
  		t.string :adress
  	end

  	create_table :persons do |t|
  		t.string :fam
  		t.string :nam
  		t.string :otch
  		t.string :cell_phone
  		t.string :phone
  		t.string :email
  		t.date :date_of_birth
  		t.belongs_to :department, index: true
  	end
  end
end
