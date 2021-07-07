require_relative '../config/environment.rb'


davinci = Artist.new("Leonardo DaVinci", 60)
bobbi = Artist.new("Bobbi Jones", 25)
kesha = Artist.new("Kesha Lake", 1)

louvre = Gallery.new("The Louvre Museum", "Paris, France")
high = Gallery.new("The High Museum", "Atlanta, Ga")

mona_lisa = Painting.new("The Mona Lisa", davinci, 100000000, louvre)
rosie = Painting.new("Rosie", kesha, 300000, louvre)
wood = Painting.new("Wood Works", bobbi, 500, high)
daisy = Painting.new("Daisy", kesha, 7700, high)


binding.pry

puts "Bob Ross rules."
