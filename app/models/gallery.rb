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
    Painting.all.select {|painting| painting.gallery == self}
  end

  def artists
    artists = []
    Painting.all.each do |painting|
      if painting.gallery == self
        artists << painting.artist
      end
    end
    artists
  end

  def artist_names
    names = []
    artists.each {|artist| names << artist.name}
    names
  end

  def most_expensive_painting
    paintings.sort_by {|painting| painting.price}.last
  end

end
