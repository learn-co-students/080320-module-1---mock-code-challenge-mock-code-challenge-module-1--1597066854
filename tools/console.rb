require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

jallen = Passenger.new("Jallen")
caryn = Passenger.new("Caryn")

teddy = Driver.new("Teddy")
val = Driver.new("Val")

teddy.pickup_ride(jallen, 12.0)
caryn.take_ride(val, 9.5)
caryn.take_ride(teddy, 9.5)
caryn.take_ride(jallen, 9.5)


binding.pry
