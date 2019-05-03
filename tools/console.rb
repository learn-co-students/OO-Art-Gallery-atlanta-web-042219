require_relative '../config/environment.rb'

frida = Artist.new("Frida Kahlo", 20)
davinci = Artist.new("Leonardo DaVinci", 37)

cobb = Gallery.new("Cobb Gallery", "Cobbtown")
high = Gallery.new("High Museum", "Atlanta")

trenza = frida.create_painting("Trenza", 20000, cobb)
tree = frida.create_painting("Tree of Hope", 19000, high)
monalisa = davinci.create_painting("Mona Lisa", 650000000, cobb)
smundi = davinci.create_painting("Salvator Mundi", 450300000, high)


binding.pry

puts "Bob Ross rules."
