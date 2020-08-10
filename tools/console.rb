require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end


# Put your variables here~!

require_relative "../app/models/driver"
require_relative "../app/models/passenger"
require_relative "../app/models/ride"



erik = Driver.new("erik")
derek = Driver.new("derek")
victor = Driver.new("victor")

simon = Passenger.new("simon")
dexter = Passenger.new("dexter")
tommy = Passenger.new("tommy")

ride1 = Ride.new(erik, simon, 1.2)
ride4 = Ride.new(erik, tommy, 4.2)
ride5 = Ride.new(derek, simon, 10.4)
ride2 = Ride.new(derek, dexter, 2.4)
ride3 = Ride.new(victor, tommy, 2.3)

binding.pry
