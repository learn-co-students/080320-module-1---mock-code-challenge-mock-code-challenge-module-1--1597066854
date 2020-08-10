require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end


val=Passenger.new("Val")
anthony=Passenger.new("Anthony")
caryn=Passenger.new("Caryn")
jallen=Passenger.new("Jallen")
grace=Driver.new("Grace")
annette=Driver.new("Annette")
gus=Driver.new("Gus")
miriam=Driver.new("Miriam")
val_grace=Ride.new("Val","Grace")
anthony_annette=Ride.new("Anthony", "Annette")
caryn_gus=Ride.new("Caryn","Gus")
jallen_miriam=Ride.new("Jallen", "Miriam")
# Put your variables here~!

binding.pry
