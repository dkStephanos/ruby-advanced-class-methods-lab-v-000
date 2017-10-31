class Song
  attr_accessor :name, :artist_name

  @@all = []

  def self.create
    song = Song.new
    @@all << song
    song
  end

  def name=(name)
    @name = name
  end

  def self.new_by_name(name)
    song = Song.new
    song.name = name
  end

  def self.all
    @@all
  end

  def save
    self.class.all << self
  end

end
