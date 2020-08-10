require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end


# Put your variables here~!

jallen = Passenger.new("Jallen")
jhonny = Passenger.new("Jhonny")

anthony = Driver.new("Anthony")
alex = Driver.new('Alex')

ride1 = Ride.new(anthony, jallen, 8.76)
ride2 = Ride.new(alex, jhonny, 20.5)
ride3 = Ride.new(alex, jallen, 100.9)

binding.pry
