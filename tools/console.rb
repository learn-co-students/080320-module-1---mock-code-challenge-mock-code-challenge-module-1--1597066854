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
val_grace=Ride.new(val, grace, 10)
anthony_annette=Ride.new(anthony, annette, 20)
caryn_gus=Ride.new(caryn,gus, 40)
jallen_miriam=Ride.new(jallen, miriam, 60)
val_miriam=Ride.new(val, miriam, 100.5)
jallen_gus=Ride.new(jallen, gus, 200.2)
val_miriam2=Ride.new(val, miriam, 50)
# Put your variables here~!

binding.pry
