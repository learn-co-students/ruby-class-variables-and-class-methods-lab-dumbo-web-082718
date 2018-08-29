
class Song

  @@count = 0
  @@artists = []
  @@genres = []

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre

    @@count += 1
    @@artists << artist
    @@genres << genre
  end


  def name
    @name
  end

  def artist
    @artist
  end

  def genre
    @genre
  end


  def self.count
    @@count
  end

  def self.artists
    @@artists.uniq
  end

  def self.genres
    @@genres.uniq
  end

  def self.genre_count
    genre_titles = @@genres.uniq
    genre_values = []
    genre_titles.each do |genre|
      genre_values << @@genres.count(genre)
    end
    Hash[genre_titles.zip genre_values]
  end

  def self.artist_count
    artist_names = @@artists.uniq
    artist_values = []
    artist_names.each do |name|
      artist_values << @@artists.count(name)
    end
    Hash[artist_names.zip artist_values]
  end

end
