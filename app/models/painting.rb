class Painting

  attr_reader :title, :artist, :price, :gallery

  @@all = []

  def initialize(title, artist, price, gallery)
    @title = title
    @price = price
    @artist = artist
    @gallery = gallery
    @@all << self
  end

  def self.all
    @@all
  end

  def self.total_price
    Painting.all.sum {|painting| painting.price}
  end

end
