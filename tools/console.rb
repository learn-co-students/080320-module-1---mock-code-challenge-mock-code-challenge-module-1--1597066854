require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end


# Put your variables here~!
adam = Passenger.new("Adam")
tony = Passenger.new("Tony")
alex = Passenger.new("Alex")

minnie = Driver.new("Minnie")
tiny = Driver.new("Tiny")
beth = Driver.new("Beth")

queens1 = Ride.new(minnie, adam, 20.0)
queens2 = Ride.new(minnie, adam, 20.0)
queens3 = Ride.new(tiny, tony, 13)
brooklyn1 = Ride.new(beth, alex, 1.0)
montreal = Ride.new(beth, tony, 100.0)

binding.pry
