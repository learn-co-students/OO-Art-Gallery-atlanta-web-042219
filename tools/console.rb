require_relative '../config/environment.rb'

scott = Artist.new("Scott", 5)
keri = Artist.new("Keri", 8)
lindsey = Artist.new("Lindsey", 15)
viraj = Artist.new("Viraj", 1)

youngblood = Gallery.new("Youngblood", "Atlanta")
met = Gallery.new("The Met", "NYC")
ikea = Gallery.new("Ikea", "Atlanta")
louvre = Gallery.new("Louvre", "Paris")

poopoo_platter = Painting.new(scott, "Poo Poo Platter", youngblood, 2000)
dogs = Painting.new(scott, "Dogs Playing Poker", met, 3500)
mona_lisa = Painting.new(keri, "Mona Lisa", ikea, 800000)
bruce = Painting.new(viraj, "Springsteen on Ice", louvre, 99)

binding.pry

puts "Bob Ross rules."