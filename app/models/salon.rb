class Salon < ActiveRecord::Base
  has_many :link_user_to_salons
  has_many :users, through: :link_user_to_salons
end
