class Song 
  attr_accessor :name, :artist, :genre 
  
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
  
  def self.artists
    @@artists.uniq = self
  end
  
  def self.genres
    @@genres.uniq = self
  end
  
  def self.count
    @@count
  end
  
  def self.artists
    return @@artists.uniq
  end
  
  def self.genres
    return @@genres.uniq!
  end
  
   def self.genre_count #go through each song and record/count each genre
                        # need to create an empty hash 
                        #iterate through @@songs
                        #if genre is not already on the hash, add it to hash and set it to 1
                        #if it is already there, increment the value
   new_hash = {}
   @@genres.each do |genre|
     if new_hash[genre]
     new_hash[genre] += 1
     else 
       new_hash[genre] = 1
     end
   end
   return new_hash
  end 
  
  def self.artist_count
    #go through the artists array and count how many times each artist appears
    #create an empty hash
    # take each artist and add it to the hash
    # if an artist is already in the hash increment it's value
    #if its not in the hash already, add it and set it = 1
    artist_hash = {}
    @@artists.each do |artist|
      if artist_hash[artist]
        artist_hash[artist] += 1
      else artist_hash[artist] = 1 
    end
  end
  return artist_hash
end

end
