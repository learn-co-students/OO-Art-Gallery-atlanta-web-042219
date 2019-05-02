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
    Painting.all.select {|painting| painting.artist == self}
  end

  def galleries
  gallery = []
    Painting.all.each do |painting|
      if painting.artist == self
        gallery << painting.gallery
      end
    end
    gallery
  end

  def cities
    galleries.select {|gallery| gallery.city}
  end

  def self.total_experience
    total_yrs = 0
    Artist.all.each {|artist| total_yrs += artist.years_experience}
    total_yrs
  end

  def self.most_prolific
    Artist.all.sort_by {|artist| artist.paintings.length / artist.years_experience}.last
  end

  def create_painting(title, price, gallery)
    Painting.new(title, self, price, gallery)
  end

end
