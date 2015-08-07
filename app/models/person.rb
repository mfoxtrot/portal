class Person < ActiveRecord::Base

  belongs_to :deparment

  def full_name
    full_name = self.fam + ' ' + self.nam + ' ' + self.otch
  end

  def full_fio
    full_fio = self.fam + ' ' + self.nam.at(0) + '.' + self.otch.at(0) + '.'
  end

end
