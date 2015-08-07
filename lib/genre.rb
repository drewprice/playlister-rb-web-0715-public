class Genre
  attr_accessor :name, :songs, :artists

  @all = []
  class << self
    attr_accessor :all

    def add(genre)
      all << genre
    end

    def reset_genres
      all.clear
    end

    def count
      all.size
    end
  end

  def initialize
    @songs = []
    @artists = []

    Genre.add(self)
  end
end
