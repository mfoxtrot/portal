class Disccard < ActiveRecord::Base
  has_many :regforms

  def full_card_name
    full_card_name = self.number + ' ' + self.client_name
  end

end
