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
      genre_count_hash[:"#{genre}"] = 1 if genre_count_hash[genres] == nil
      genre_count_hash[:"#{genre}"] += 1
    end
    genre_count_hash
  end
  
   def self.artist_count
    artist_count_hash = {}
    @@SONG_HASH[artists].each do |artist|
      artist_count_hash[:"#{artist}"] = 1 if artist_count_hash[artists] == nil
      artist_count_hash[:"#{artist}"] += 1
    end
    artist_count_hash
  end
  
end