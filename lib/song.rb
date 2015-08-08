class Song
  attr_accessor :genre, :name, :artist

  def genre=(genre)
    @genre = genre
    self.genre.songs << self
  end
end
