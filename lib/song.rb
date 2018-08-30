require "pry"
class Song
  attr_accessor :name, :artist, :genre
  @@count = 0
  @@artists = []
  @@genres = []
  def initialize(name, artist, genre)
    @@count+=1
    @name = name
    @artist = artist
    @genre = genre
    @@artists.push(@artist)
    @@genres.push(@genre)
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
    new_hash = {}
    @@genres.each do |each_genre|
      if new_hash.key?(each_genre)
        new_hash[each_genre] += 1
      else
        new_hash[each_genre] = 1
      end
    end
    new_hash
  end

  def self.artist_count
    new_hash = {}
    @@artists.each do |artist|
      if new_hash.key?(artist)
        new_hash[artist] += 1
      else
        new_hash[artist] = 1
      end
    end
    new_hash
  end





end
