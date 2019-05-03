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
    Painting.all.select {|p| p.artist == self}
  end

  def galleries
    Painting.all.select{|p| p.artist == self}.map {|g| g.gallery}
  end

  def cities
    self.galleries.map {|c| c.city}
  end

  def self.total_experience
    total = 0
    @@all.each {|t| total += t.years_experience}
    total
  end

  def self.most_prolific
    paintcount = @@all.map {|p| p.paintings}.count
    self.all.find {|y| paintcount.to_f/y.years_experience.to_f}
  end
  
  def create_painting(title, price, gallery)
    Painting.new(title, self, price, gallery)
  end

end
