require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end


# Put your variables here~!
##passengers
andy = Passenger.new("Andy")
jim = Passenger.new("Jim")
sarah = Passenger.new("Sarah")
tim = Passenger.new("Tim")
ben = Passenger.new("Ben")

##drivers
smith = Driver.new("Smith")
cooper = Driver.new("Cooper")
santos = Driver.new("Santos")
castillo = Driver.new("Castillo")
moraga = Driver.new("Moraga")

distances = [2.56, 4.5, 8.1, 6.5, 7.5, 4.3]

## rides generator 
10.times do 
   Ride.new(Driver.all.sample, Passenger.all.sample, distances.sample)
end 

##premium members
ryan = Passenger.new("Ryan")
alan = Passenger.new("Alan")
Ride.new(smith, ryan, 101.5)
Ride.new(cooper, alan, 150.5)

binding.pry
