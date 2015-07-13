class Salon < ActiveRecord::Base

  has_many :disccards
  has_and_belongs_to_many :users

end
