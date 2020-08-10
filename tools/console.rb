require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end


# Put your variables here~!

binding.pry

lou = Driver.new("Lou")
tiffany = Driver.new("Tiffany")
vincent = Passenger.new("Vincent")
ride_1 = Ride.new(1, lou, vincent, 30)
ride_2 = Ride.new(2, tiffany, vincent, 22.2)
ride_3 = Ride.new(3, lou, vincent, 90.9)