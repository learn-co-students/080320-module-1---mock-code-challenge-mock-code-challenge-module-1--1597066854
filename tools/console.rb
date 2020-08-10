require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end


# Put your variables here~!
pass1 = Passenger.new("Matt")
pass2 = Passenger.new("John")
pass3 = Passenger.new("Sam")

driver1 = Driver.new("Tim")
driver2 = Driver.new("Alicia")
driver3 = Driver.new("Vince")

ride1 = Ride.new(driver1, pass1, 3.2)
ride2 = Ride.new(driver2, pass2, 100.8)
ride3 = Ride.new(driver3, pass3, 57)
ride4 = Ride.new(driver2, pass3, 24.4)
ride5 = Ride.new(driver1, pass3, 39.2)

binding.pry