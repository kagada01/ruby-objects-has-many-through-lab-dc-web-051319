require 'pry'

class Artist
  attr_accessor :name, :genre, :songs

  @@all = []

  def initialize(name)
    @name = name
    @genre = genre
    @@all << self
  end

  def self.all
    @@all
  end

  def new_song(name, genre)
    Song.new(name, self, genre)
  end

  def songs
    Song.all.select do |song|
      song.artist == self
    end
  end

  def genres
    Genre.all.select do |genre|
      self.genre = genre
    end
  end

end
