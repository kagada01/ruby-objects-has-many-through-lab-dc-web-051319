require 'pry'

class Song
  attr_accessor :artist, :genre

  @@all = []

  def initialize(name, artist, genre)
    @name, @artist, @genre = name, artist, genre
    @@all << self
  end

  def self.all
    @@all
  end

end
