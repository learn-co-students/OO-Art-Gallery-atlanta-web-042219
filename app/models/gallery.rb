# class Gallery

#   attr_reader :name, :city

#   def initialize(name, city)
#     @name = name
#     @city = city
#   end

# end

# class Gallery
#     attr_accessor :name, :city

#     @@gallery = []

#     def initialize(name, city)
#         @name = name
#         @city = city
#         @@gallery << self
#     end

#     def self.all
#         @@gallery
#     end

#     def paintings
#         Painting.all.select { |x| x.gallery == self }
#     end

#     def artists
#         paintings.map { |x| x.artist }
#     end

#     def artist_names
#         artists.map { |x| x.name }
#     end
# end



class Gallery

    attr_reader :name, :city

    @@gallery = []
  
    def initialize(name, city)
      @name = name
      @city = city
      @@gallery << self
    end

    def self.all
      @@gallery
    end

    def paintings
      Painting.all.select { |painting| painting.gallery == self }
    end

    def artists
      paintings.map { |x| x.artist }
    end

    def most_expensive_painting
      paintings.max_by { |x| x.price }
    end
  end