require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end


# Put your variables here~!

###### DRIVER ######
d1 = Driver.new("Sam")
d2 = Driver.new("Judy")
d3 = Driver.new("Jordan")
d4 = Driver.new("Rachael")

##### PASSENGER ######
p1 = Passenger.new("Blade")
p2 = Passenger.new("Toni")
p3 = Passenger.new("Juan")
p4 = Passenger.new("Val")

###### RIDE ######
r1 = Ride.new(d1, p1, 6.0)
r2 = Ride.new(d2, p2, 12.5)
r3 = Ride.new(d3, p3, 3.2)
r4 = Ride.new(d4, p4, 2.8)
r5 = Ride.new(d2, p4, 7.8)
r6 = Ride.new(d1, p3, 3.3)
r7 = Ride.new(d1, p3, 4.4)
r8 = Ride.new(d2, p3, 109.9)


binding.pry
