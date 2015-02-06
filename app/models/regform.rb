class Regform < ActiveRecord::Base
  dragonfly_accessor :image

  def process_barcode
    process_barcode = %x{"C:\\Program Files (x86)\\ZBar\\bin\\zbarimg" -D "#{self.image.path}"}.scan(/\d+/).second
  end
end
