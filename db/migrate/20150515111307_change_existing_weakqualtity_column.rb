class ChangeExistingWeakqualtityColumn < ActiveRecord::Migration

  def up
    Regform.find_each do |r|
      r.weak_quality = 0
      r.save!
    end
  end

end
