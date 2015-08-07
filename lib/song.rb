class Song
  attr_accessor :genre

  def genre=(genre)
    @genre = genre
    self.genre.songs << self
  end
end
