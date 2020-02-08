

class Artist
  attr_accessor :name 
@@all = []
def initialize(name)
  @name = name 
  @songs = []
end

def songs
  @songs
end 

def self.all
  @@all
end 

def self.destroy_all
  @@all.clear
end 

def save
@@all << self
end 

def self.create(artist)
news = self.new(artist)
news.save
news 

end 

def add_song(song)
    song.artist = self unless song.artist == self
    @songs << song unless @songs.include?(song)
  end
  

#rspec spec/002_artist_basics_spec.rb
#rspec spec/004_songs_and_artists_spec.rb

  
end 