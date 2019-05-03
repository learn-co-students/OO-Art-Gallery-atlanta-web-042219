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
    Painting.all.select { |p| p.gallery == self}
  end

  def artists
    paintings.map { |p| p.artist}
  end

  def artist_names
    artists.map { |a| a.name }
  end

  def most_expensive_painting
    tab = paintings.map { |p| p.price }
    paintings[tab.find_index(tab.max)]
  end
end
