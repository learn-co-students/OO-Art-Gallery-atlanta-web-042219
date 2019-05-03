class Painting

  attr_reader :title, :price, :artist, :gallery

  @@all = []

  def initialize(title, artist, price, gallery)
    @title = title
    @artist = artist
    @price = price
    @gallery = gallery
    @@all << self
  end

  def self.all
    @@all
  end

  def self.total_price
    price = 0
    @@all.each {|p| price += p.price}
    price
  end

end
