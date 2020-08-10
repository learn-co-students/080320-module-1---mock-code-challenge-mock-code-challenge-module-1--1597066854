require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end



jeff = Driver.new("Jeff")
jared = Driver.new("Jared")
jason = Driver.new("Jason")

tim = Passenger.new("Tim")
tiffany = Passenger.new("Tiffany")
tia = Passenger.new("Tia")

jeff_tim = Ride.new(tim, jeff, 3.2)
jeff_tiffany = Ride.new(tiffany, jeff, 4.1)
jared_tim = Ride.new(tim, jared, 2.3)
jason_tia = Ride.new(tia, jason, 2.5)
jason_tiffany = Ride.new(tiffany, jason, 5.6)
jared_tim_2 = Ride.new(tim, jared, 4.1)
jared_tim_3 = Ride.new(tim, jared, 102.3)

binding.pry
