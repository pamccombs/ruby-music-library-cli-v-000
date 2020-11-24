class Genre
  
  extend Concerns::Findable
  
  attr_accessor :name
  attr_reader :songs
  
  @@all = []
  
  def self.all
    @@all
  end
  
  def self.destroy_all
    all.clear
  end
  
  def self.create(name)
<<<<<<< HEAD
    genre = self.new(name)
    genre.save
    genre
=======
    song = self.new(name)
    song.save
    song
>>>>>>> 3178ca5b6fc15f88528207f5e1729b2f0893a825
  end
  
  def initialize(name)
    @name= name
    @songs= []
  end
  
  def save
    @@all << self
  end
  
  def artists
    songs.collect {|a| a.artist}.uniq
  end
  
  
  
  
  
  
end