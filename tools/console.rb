require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end


# Put your variables here~!
passenger_premium = Passenger.new("passenger premium")
passenger_not_premium = Passenger.new("passenger not premium")
passenger = Passenger.new("passenger")

driver_under = Driver.new("driver under")
driver_above = Driver.new("driver above")
driver = Driver.new("driver")

passenger_premium.ride(driver_above, 12)
passenger_premium.ride(driver_above, 20)
passenger_premium.ride(driver_above, 10)
passenger_premium.ride(driver_above, 25)
passenger_premium.ride(driver_above, 50)

passenger_not_premium.ride(driver_under, 2.5)
passenger_not_premium.ride(driver_under, 4)

driver.drive(passenger, 35)

binding.pry
