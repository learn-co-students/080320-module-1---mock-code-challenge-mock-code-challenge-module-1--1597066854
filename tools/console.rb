require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end


p1 = Passenger.new("John")
p2 = Passenger.new("Marsha")
p3 = Passenger.new("Brian")
p4 = Passenger.new("Mary")
p5 = Passenger.new("Eric")
p6 = Passenger.new("Jane")

d1 = Driver.new("Bert")
d2 = Driver.new("Tom")
d3 = Driver.new("Theo")
d4 = Driver.new("Carl")
d5 = Driver.new("Peter")
d6 = Driver.new("Maryjo")

r1 = Ride.new(d1, p1, 4.2)
r2 = Ride.new(d2, p2, 2.2)
r3 = Ride.new(d3, p3, 1.2)
r4 = Ride.new(d4, p4, 6.6)
r5 = Ride.new(d5, p5, 2.6)
r6 = Ride.new(d6, p6, 3.2)
# Put your variables here~!

binding.pry
