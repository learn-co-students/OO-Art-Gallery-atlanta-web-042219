class Artist

  attr_reader :name, :years_experience, :gallery, :painting
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
    paintings.map { |painting| painting.gallery }
  end

  def cities
    paintings.map { |painting| painting.gallery.city }
  end

  def self.total_experience
    self.all.sum { |x| x.years_experience }
  end

  def self.most_prolific
    self.all.max_by do |artist|
      (artist.paintings.count.to_f / artist.years_experience.to_f).to_f
    end
  end

  def create_painting(title, gallery, price)
    Painting.new(self, title, gallery, price)
  end


end
