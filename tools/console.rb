require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end


# Put your variables here~!
#passengers
isa = Passenger.new("Isa")
sara = Passenger.new("Sara")
ellie = Passenger.new("Ellie")

#drivers
appollo = Driver.new("Appollo")
mikael = Driver.new("Mikael")
lara = Driver.new("Lara")

#rides
Ride.new(isa, lara, 100)
Ride.new(isa, appollo, 99)
Ride.new(isa, mikael, 101)
Ride.new(sara, lara, 1)
Ride.new(ellie, lara, 999)
Ride.new(ellie, appollo, 10)

binding.pry
