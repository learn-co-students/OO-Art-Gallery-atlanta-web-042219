require_relative '../config/environment.rb'

andrew = Artist.new("Andrew Allen", 1)
tez = Artist.new("Montez Smith", 5)
hanaa = Artist.new("Hanaa Sadoqi", 7)
kingcons = Artist.new("Brit Butler", 10)

flatiron = Gallery.new("The Flatiron Gallery", "Atlanta, GA")

andrew.create_painting("OO-Art-Gallery-atlanta-web-042219", flatiron, 100000000)



binding.pry
#...
