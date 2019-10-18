class Song
  attr_accessor :name, :artist, :genre
  @@SONG_HASH = {
    count: 0
    artists: []
    genres: []
  }
  
  def initialize (name, artist_name, genre_name)
    self.name = name
    self.artist = artist_name
    self.genre = genre_name
    @@SONG_HASH[count] += 1
    @@SONG_HASH[artists] << artist_name
    @@SONG_HASH[genres] << genre_name
  end
  
  
  
  
end