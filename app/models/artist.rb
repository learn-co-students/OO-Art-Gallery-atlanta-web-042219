# class Artist

#   attr_reader :name, :years_experience

#   def initialize(name, years_experience)
#     @name = name
#     @years_experience = years_experience
#   end

# end

# class Artist
#   attr_accessor :name, :years_experience

#   @@artist = []

#   def initialize(name, years_experience)
#     @name = name
#     @years_experience = years_experience
#     @@artist << self
#   end

#   def self.all
#     @@artist
#   end

#   def paintings
#     Painting.all.select { |x| x.artist == self }
#   end

#   def galleries
#     paintings.map { |painting| painting.gallery }
#   end

#   def cities
#     paintings.map { |painting| painting.gallery.city }
#     # galleries.map { |painting| painting.city }
#   end

#   def self.total_experience
#     self.all.sum { |x| x.years_experience }
#   end

#   # def most_prolific

#   # end

#   def create_painting(title, price, gallery)
#     Painting.new(self, title, price, gallery)
#   end
# end



class Artist

  attr_reader :name, :years_experience

  @@artist = []

  def initialize(name, years_experience)
    @name = name
    @years_experience = years_experience
    @@artist << self
  end

  def self.all
    @@artist
  end

  def paintings
    Painting.all.select { |paint| paint.artist == self }
  end

  def galleries
    paintings.map { |x| x.gallery }
  end

  def cities
    paintings.map { |x| x.gallery.city }
  end

  def self.total_experience
    Artist.all.sum { |artist| artist.years_experience }
  end

  def self.most_prolific
    Artist.all.max_by { |artist| artist.paintings.length / artist.years_experience }
  end

  def create_painting(title, price, gallery)
    Painting.new(title, price, self, gallery)
  end
end