
class Song

  attr_accessor :name, :artist, :genre
    @@count = 0
    @@genres = []
    @@artists = []

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count += 1
    @@genres << self.genre
    @@artists << self.artist
  end

  def self.count
    @@count
  end

  def self.genres
  # returns array of all the genres of existing songs
    @@genres.uniq
  end

  def self.artists
  # returns array of all the artists of existing songs
    @@artists.uniq
  end

  def self.genre_count
    genre_hash = Hash.new
    @@genres.each do |type|
      if genre_hash[type]
        genre_hash[type] +=1
      else genre_hash[type] =1
      end
    end
    return genre_hash
  end

  def self.artist_count
    artist_hash = Hash.new
    @@artists.each do |artist|
      if artist_hash[artist]
        artist_hash[artist] +=1
      else artist_hash[artist] = 1
      end
    end
    return artist_hash
  end

end
