class Regform < ActiveRecord::Base
  dragonfly_accessor :image

  belongs_to :disccard

  def process_barcode
    #process_barcode = %x{"C:\\Program Files (x86)\\ZBar\\bin\\zbarimg" -D "#{self.image.path}"}.scan(/\d+/).second
    process_barcode = %x{"zbarimg" -D "#{self.image.path}"}.scan(/\d+/).second
  end
end
