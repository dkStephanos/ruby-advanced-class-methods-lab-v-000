class Song
  attr_accessor :name, :artist_name

  @@all = []

  def self.create
    song = Song.new
    @@all << song
    song
  end

  def self.new_by_name(name)
    song = Song.new
    song.name = name
    song
  end

  def self.create_by_name(name)
    song = Song.new
    song.name = name
    @@all << song
    song
  end

  def self.find_by_name(name)
    @@all.detect do |song|
      if song.name == name
        return song
      end
    end
  end

  def self.find_or_create_by_name(name)
    if !song = self.find_by_name(name)
      self.create_by_name(name)
    end
  end

  def self.all
    @@all
  end

  def save
    self.class.all << self
  end

end
