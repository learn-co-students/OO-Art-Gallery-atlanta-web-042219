class Artist

  attr_reader :name, :years_experience
  @@artists = []

  def initialize(name, years_experience)
    @name = name
    @years_experience = years_experience
    @@artists << self
  end

  def self.all
    @@artists
  end

  def paintings
    Painting.all.select { |painting| painting.artist == self }
  end

  def galleries
    self.paintings.map { |painting| painting.gallery }
  end

  def cities
    self.paintings.map { |painting| painting.gallery.city }
  end

  def self.total_experience
    total = 0
    @@artists.each { |artist| total += artist.years_experience }
    total
  end

  def self.most_prolific
    experience = @@artists.map { |artist| artist.years_experience }
    indexed_paintings = @@artists.map { |artist| Painting.all.select { |painting| painting.artist == artist } }
    painting_count = indexed_paintings.map { |array| array.count }
    values = painting_count.each_with_index{ |number, index| number.to_f / experience[index] }
    the_index = values.index(values.max)
    @@artists[the_index]
  end

  def create_painting(title, price, gallery)
    Painting.new(title, price, self, gallery)
  end

end
