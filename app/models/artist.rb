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
    Painting.all.select {|x| x.artist == self }
  end

  def galleries
    self.paintings.map {|x| x.gallery }
  end

  def cities
    self.galleries.map {|x| x.city }
  end

  def self.total_experience
    Artist.all.map {|x|x.years_experience}.sum.to_i
  end

  def self.most_prolific
    Artist.all.max_by {|x| x.paintings.length / x.years_experience }
  end

  def create_painting(title, price, gallery)
    Painting.new(title, price, gallery, self)
  end
end
