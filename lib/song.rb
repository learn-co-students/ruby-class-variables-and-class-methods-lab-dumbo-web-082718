class Song 
  attr_accessor :name, :title, :genre 
  
  @@count = 0
  def initialize(name, title, genre) 
    @name = name
    @title = title
    @genre = genre
  end
  
  def artist
    Song.title = @name
    @name
  end
  
end
