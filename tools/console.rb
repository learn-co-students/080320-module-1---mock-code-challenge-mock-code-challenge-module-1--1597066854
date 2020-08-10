require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end


# Put your variables here~!


driver1 = Driver.new("ted")
driver2 = Driver.new("rick")
driver3 = Driver.new("mike")

pass1 = Passenger.new("joe")
pass2 = Passenger.new("angel")
pass3 = Passenger.new("chris")

ride1 = Ride.new(driver1, pass1, 1.5)
ride2 = Ride.new(driver2, pass2, 2.5)

binding.pry
