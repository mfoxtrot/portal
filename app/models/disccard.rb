class Disccard < ActiveRecord::Base
  has_many :regforms
  belongs_to :cardowner
  belongs_to :salon

  def full_card_name
    full_card_name = self.number + ' ' + self.client_name
  end

  scope :localcards, lambda { |user| where(salon_id: user.salons) }

end
