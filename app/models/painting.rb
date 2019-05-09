# class Painting

#   attr_accessor :artist, :title, :price, :gallery

#   @@painting = []

#   def initialize(artist, title, price, gallery)
#     @artist = artist
#     @title = title
#     @price = price
#     @gallery = gallery
#     @@painting << self
#   end

#   def self.all
#     @@painting
#   end

#   def self.total_price
#     self.all.sum { |x| x.price }
#   end



# end





class Painting

  attr_reader :title, :price, :artist, :gallery

  @@all = []

  def initialize(title, price, artist, gallery)
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
    Painting.all.sum { |painting| painting.price }
  end

end