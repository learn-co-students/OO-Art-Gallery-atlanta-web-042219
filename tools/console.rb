require_relative '../config/environment.rb'

preston = Artist.new("Preston", 4)
anne = Artist.new("Anne", 10)
atl = Gallery.new("Atlanta Fine Arts", "Atlanta")
chi = Gallery.new("Arts Chicago", "Chicago")
painting_one = Painting.new("Best Painting", 5000, preston, atl)
painting_one = Painting.new("Landscape", 1000, anne, atl)
painting_one = Painting.new("Most Excellent", 4000, anne, chi)

binding.pry

puts "Bob Ross rules."