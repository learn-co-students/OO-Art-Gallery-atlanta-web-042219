require_relative '../config/environment.rb'

art1 = Artist.new("jae", 10)
art2 = Artist.new("lee", 20)
art3 = Artist.new("kim", 30)

gal1 = Gallery.new("1", "newyork")
gal2 = Gallery.new("2", "lasvegas")
gal3 = Gallery.new("3", "cali")

pai1 = Painting.new("hello", 100, gal1, art1)
pai2 = Painting.new("bye", 200, gal2, art2)
pai3 = Painting.new("nice", 400, gal3, art3)
pai4 = Painting.new("holly", 500, gal2, art3)
pai5 = Painting.new("king", 1000, gal1, art2)

binding.pry

puts "Bob Ross rules."
