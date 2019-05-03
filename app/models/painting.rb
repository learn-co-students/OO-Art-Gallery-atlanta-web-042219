class Painting
  attr_reader :artist, :title, :gallery, :price
  @@all = []

  def self.all
  	@@all
  end

  def initialize(artist, title, gallery, price)
    @title = title
    @artist = artist
    @gallery = gallery
    @price = price
    @@all << self
  end

  def self.total_price
  	@@all.map {|painting| painting.price }.sum
  end
end
