require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

# Put your variables here~!

kevin= Passenger.new("Kevin")
caryn= Passenger.new("Caryn")
jallen= Passenger.new("Jallen")

jack= Driver.new("Jack")
brian= Driver.new("Brian")
terry= Driver.new("Terry")

ride1= Ride.new(jack, kevin, 7.5)
ride2= Ride.new(brian, caryn, 8.3)
ride3= Ride.new(terry, jallen, 73.5)
ride4= Ride.new(terry, jallen, 38.5)
ride5= Ride.new(jack, caryn, 53.5)
ride6= Ride.new(brian, caryn, 48.7)



binding.pry
