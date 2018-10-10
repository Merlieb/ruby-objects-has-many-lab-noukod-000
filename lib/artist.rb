class Artist
  @@all = []
attr_accessor :name ,:songs
def initialize (name)
  @name = name
  @@all << self
  end
  def self.all
    @@all
  end
  def add_song_by_name(name, genre)
   song = Song.new(name, genre)
   @songs << song
    song.artist = self
  end

  def add_song(song)
    song.artist = self
  end
end
