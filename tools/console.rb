require_relative '../config/environment.rb'


art1 = Artist.new("Junkrat", 11)
art2 = Artist.new("Dva", 3)
art3 = Artist.new("Anna", 25)

gal1 = Gallery.new("The junk yard", "Junkertown")
gal2 = Gallery.new("Cherry Bollosum", "Hanamura")
gal3 = Gallery.new("Cold Iron", "Soviet Russia")

p1 = Painting.new("Be Mine", 5000, art1, gal1)
p2 = Painting.new("Bombs Away", 10000, art1, gal3)
p3 = Painting.new("All your ults", 20000, art2, gal2)
p4 = Painting.new("Darts", 99999, art3, gal2)

binding.pry

gal2.most_expensive_painting

puts "Bob Ross rules."
