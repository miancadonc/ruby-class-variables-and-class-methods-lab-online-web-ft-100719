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
  
  def self.count
    @@SONG_HASH[count]
  end
  
  def self.artists
    @@SONG_HASH[artists].uniq
  end
  
  def self.genres
    @@SONG_HASH[genres].uniq
  end
  
  def self.genre_count
    genre_count_hash = {}
    @@SONG_HASH[genres].each do |genre|
      genre_count_hash[:] = 1 if genre_count_hash[genres] == nil
      
    end
  end
  
end