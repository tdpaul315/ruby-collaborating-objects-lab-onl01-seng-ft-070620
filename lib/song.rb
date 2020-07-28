class Song
  attr_accessor :name, :artist
  
  @@all = []

  def initialize(name)
    @name = name
  end
  
  def self.all 
    @@all 
  end 
  
  def self.find(song)
    self.all.detect { |song| song.name == self }
  end

  def save
    
  def self.new_by_filename(file)
    artist_name = file.split(" - ")[0]
    song_name = file.split(" - ")[1]
    song = Song.new(song_name)
    song.artist_name = artist_name
    song
  end

  def artist_name=(name)
    artist = Artist.find_or_create_by_name(name)
    self.artist = artist
    artist.add_song(self)
  end
end 