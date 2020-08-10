require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end


# Put your variables here~!

jallen = Passenger.new("Jallen")
caryn = Passenger.new("Caryn")

meghann = Driver.new("Meghann")
isabelle = Driver.new("Isabelle")

ride1 = Ride.new(meghann, jallen, 1.6)
ride2 = Ride.new(isabelle, caryn, 20.11)
ride3 = Ride.new(meghann, caryn, 100)
ride4 = Ride.new(meghann, caryn, 12)

binding.pry
