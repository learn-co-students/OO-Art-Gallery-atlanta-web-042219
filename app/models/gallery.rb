class Gallery

  attr_reader :name, :city

  @@galleries = []

  def initialize(name, city)
    @name = name
    @city = city
    @@galleries << self
  end

  def self.all
    @@galleries
  end

  def paintings
    Painting.all.select {|x| x.gallery == self }
  end

  def artists
    self.paintings.map {|x| x.artist }
  end

  def artist_name
    self.artists.map {|x| x.name }
  end

  def most_expensive_painting
    # self.paintings.max_by {|x| x.price }
    self.paintings.map {|x| x.price}.max
  end
end
