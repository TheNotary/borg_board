class BorgCube < ActiveRecord::Base
  
  def self.borg_in_space?(x,y)
    borg = self.where(x: x, y: y)
    return false if borg.count == 0
    true
  end
  
end
