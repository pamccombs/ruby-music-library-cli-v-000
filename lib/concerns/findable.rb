module Concerns::Findable
  
<<<<<<< HEAD
  def find_by_name(name)
    all.find {|ex| ex.name == name}
  end
  
  
  def find_or_create_by_name(name)
    find_by_name(name) || create(name)
=======
  def self.create(name)
    song = self.new(name)
    song.save
    song
  end
  
  def self.find_by_name(name)
    self.all.find {|ex| ex.name == name}
  end
  
  
  def self.find_or_create_by_name(name)
    self.find_by_name(name) || self.create(name)
>>>>>>> 3178ca5b6fc15f88528207f5e1729b2f0893a825
  end
  
end