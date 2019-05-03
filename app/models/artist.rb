class Artist
  attr_reader :name, :years_experience
  @@all = []

  def self.all
  	@@all
  end

  def initialize(name, years_experience)
    @name = name
    @years_experience = years_experience
    @@all << self
  end

  def create_painting(title, gallery, price)
  	Painting.new(self, title, gallery, price)
  end

  def paintings
  	Painting.all.select {|painting| painting.artist == self }
  end

  def galleries
  	self.paintings.map {|painting| painting.gallery }
  end

  def cities
  	self.galleries.map {|gallery| gallery.city}
  end

  def self.total_experience
  	@@all.map {|artist| artist.years_experience }.sum
  end

  def self.most_prolific
  	max = nil
  	@@all.each {|artist|
  		max ||= artist
  		max   = artist if (artist.paintings.count/artist.years_experience) > (max.paintings.count/max.years_experience)
  	}
  	max
  end
end
