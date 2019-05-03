class Artist

  attr_reader :name, :years_experience

  @@all = []

  def initialize(name, years_experience)
    @name = name
    @years_experience = years_experience

    @@all << self
  end

  def self.all
    @@all
  end

  def paintings
    Painting.all.select { |p| p.artist == self }
  end

  def galleries
    paintings.map { |p| p.gallery }
  end

  def cities
    galleries.map { |g| g.city }
  end

  def self.total_experience
    exp = 0
    self.all.each { |a| exp += a.years_experience }
    exp
  end

  def self.most_prolific
    table = self.all.map { |a| a.paintings.size.to_f / a.years_experience }
    self.all[table.find_index(table.max)]
  end

  def create_painting(title, price, gallery)
    Painting.new(title, price, self, gallery)
  end
end
