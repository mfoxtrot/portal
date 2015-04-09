class Salon < ActiveRecord::Base
  belongs_to :linkusertosalon
  has_many :user, through: :linkusertosalon
end
