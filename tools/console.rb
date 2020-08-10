require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end


# Put your variables here~!

angel = Passenger.new("angel")
mark = Passenger.new("mark")
roger = Passenger.new("roger")
maureen = Passenger.new("maureen")

joanne = Driver.new("joanne")
benny = Driver.new("benny")
collins = Driver.new("collins")

Ride.new(joanne, maureen, 30)
Ride.new(benny, maureen, 100)
Ride.new(benny, maureen, 40)
Ride.new(benny, roger, 50)
Ride.new(collins, angel, 35)
Ride.new(joanne, angel, 8)

binding.pry
