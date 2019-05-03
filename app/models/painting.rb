class Painting

  attr_reader :title, :price, :artist, :gallery
  @@paintings = []

  def initialize(artist, title, gallery, price)
    @artist = artist
    @title = title
    @gallery = gallery
    @price = price
    @@paintings << self
  end

  def self.all
    @@paintings
  end

  def self.total_price
    self.all.sum { |x| x.price }
  end

end
