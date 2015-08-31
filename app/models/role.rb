class Role < ActiveRecord::Base

  has_many :assignments
  has_many :users, :through => :assignments

  belongs_to :app

end
