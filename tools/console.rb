require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

david = Passenger.new("david")

sara = Driver.new("sara")

r1 = Ride.new(david,sara,10) 

binding.pry
