class Artist
  attr_accessor :name, :songs, :genres

  @all = []

  class << self
    attr_accessor :all

    def add(artist)
      all << artist
    end

    def reset_artists
      all.clear
    end

    def count
      all.size
    end
  end

  def initialize
    @songs = []
    @genres = []

    Artist.add(self)
  end

  def add_song(song)
    songs << song

    genres << song.genre

    add_artist_to(song.genre) if song.genre
  end

  def add_artist_to(genre)
    genre.artists << self unless genre.artists.include? self
  end
end
