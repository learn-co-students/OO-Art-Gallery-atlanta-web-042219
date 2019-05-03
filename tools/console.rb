require_relative '../config/environment.rb'

jojo = Artist.new("Jojo", 20)
dio = Artist.new("Dio", 1)
louvre = Gallery.new("The Louvre", "Paris")
phx = Gallery.new("Phoenix Art", "Phoenix")
nut = Painting.new("A nut", 5000, jojo, louvre)
bold = Painting.new("Bold nuts", 2000, jojo, phx)
public = Painting.new("Marta Train", 1000, dio, louvre)
pub = Painting.new("Train", 2500, dio, louvre)
lic = Painting.new("Marta", 95, dio, louvre)



binding.pry

puts "Bob Ross rules."
