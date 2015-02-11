class AddSomeFieldsForDisccards < ActiveRecord::Migration
  def change
    add_column :disccards, :want_recieve_emails, :bit
    add_column :disccards, :want_recieve_sms, :bit
    add_column :disccards, :no_calls, :bit
  end
end
