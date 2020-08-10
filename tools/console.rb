require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end


passenger1 = Passenger.new('marcus')
passenger2 = Passenger.new('marry')
passenger3 = Passenger.new('abraham')

driver1 = Driver.new('charley')
driver2 = Driver.new('sam')
driver3 = Driver.new('tony')

ride1= Ride.new(driver1, passenger1, 99)
ride1= Ride.new(driver1, passenger1, 1.1)
# ride1= Ride.new(driver1, passenger1, 1.2)
# ride2= Ride.new(driver2, passenger1, 4.2)
ride3= Ride.new(driver1, passenger2, 3000.2)
ride4= Ride.new(driver3, passenger3, 6.2)
ride5= Ride.new(driver2, passenger2, 3.2)
binding.pry
