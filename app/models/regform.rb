class Regform < ActiveRecord::Base
  dragonfly_accessor :image

  belongs_to :disccard
  belongs_to  :salon

  def process_barcode
    process_barcode = %x{"zbarimg" -D "#{self.image.path}"}.scan(/\d+/).second
  end

  def set_barcode
    self.barcode =  %x{"zbarimg" -D "#{self.image.path}"}.scan(/\d+/).second
  end

  def set_disccard
    self.disccard = Disccard.find_by_barcode(self.barcode)
  end

  scope :unlinked, -> { where('disccard_id is null and salon_id=23') }

end
