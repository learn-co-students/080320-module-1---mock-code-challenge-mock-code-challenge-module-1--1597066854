require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end


# Put your variables here~!

#passenger 
sam = Passenger.new("sam")
rob = Passenger.new("rob")
jerry = Passenger.new("jerry")
laura = Passenger.new("laura")

#driver
louis = Driver.new("louis")
fred = Driver.new("fred")
sal = Driver.new("sal")

#ride
one = Ride.new(5.2, sam, louis)
one = Ride.new(8.9, rob, louis)
one = Ride.new(2, jerry, fred)
one = Ride.new(1.333, sam, sal)
one = Ride.new(90, sam, louis)
one = Ride.new(100, jerry, fred)

binding.pry
