class Gallery

  attr_reader :name, :city

  @@all = []

  def initialize(name, city)
    @name = name
    @city = city
    @@all << self
  end

  def self.all
    @@all
  end

  def paintings
    Painting.all.select {|p| p.gallery == self}
  end

  def artists
    self.paintings.map {|a| a.artist}
  end

  def artist_names
    self.artists.map {|a| a.name}
  end

  def most_expensive_painting
    expensive = self.paintings.map {|e| e.price}.max
    self.paintings.select {|p| p.price == expensive}
  end

end
