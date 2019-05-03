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
    Painting.all.select { |painting| painting.gallery == self }
  end

  def artists
    self.paintings.map { |painting| painting.artist}
  end

  def artist_names
    self.artists.map { |artist| artist.name }
  end

  def most_expensive_painting
    hella_guap = 0
    the_painting = nil
    self.paintings.each do |painting|
      if painting.price > hella_guap
        hella_guap = painting.price
        the_painting = painting
      end
    end
    the_painting
  end

end
