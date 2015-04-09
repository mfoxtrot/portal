class Link_user_to_salon < ActiveRecord::Base

  belongs_to :salon
  belongs_to :user
end
