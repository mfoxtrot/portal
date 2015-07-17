class Cardowner < ActiveRecord::Base
  has_many :cardownerchildrens
  has_many :disccards
  has_one :emailcheckresult

  def full_name
    full_name = self.fam + ' ' + self.name + ' ' + self.otch
  end

end
