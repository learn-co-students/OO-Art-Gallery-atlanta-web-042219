class Painting

  attr_reader :title, :price
  attr_accessor :gallery, :artist

  @@all = []

  def initialize(title, price, gallery, artist)
    @title = title
    @price = price
    @gallery = gallery
    @artist = artist
    @@all << self
  end

  def self.all
    @@all
  end

  def self.total_price
    Painting.all.map {|x| x.price }.sum.to_i
  end
end
