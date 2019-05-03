class Gallery
  attr_reader :name, :city
  @@all = []

  def self.all
  	@@all
  end

  def initialize(name, city)
    @name = name
    @city = city
    @@all << self
  end

  def paintings
  	Painting.all.select {|painting| painting.gallery == self }
  end

  def artists
  	self.paintings.map {|painting| painting.artist }
  end

  def artist_names
  	self.artists.map {|artist| artist.name }
  end

  def most_expensive_painting
  	max = nil
  	self.paintings.each {|painting|
  		max ||= painting
  		max   = painting if painting.price > max.price
  	}
  	max
  end
end
