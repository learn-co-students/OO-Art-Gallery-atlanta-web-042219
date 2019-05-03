class Gallery

  attr_reader :name, :city, :artist, :painting
  @@galleries = []

  def initialize(name, city)
    @name = name
    @city = city
    @@galleries << self
  end

  def self.all
    @@galleries
  end

  def artists
    artists = []
    Painting.all.map do |paintings|
      if paintings.gallery == self
        artists << paintings.artist
      end
    end
    artists
  end

  def artist_names
    artists = []
    Painting.all.map do |paintings|
      if paintings.gallery == self
        artists << paintings.artist.name
      end
    end
    artists
  end

  def most_expensive_painting
    Painting.all.sort_by { |paintings| paintings.price }.last
  end

end
