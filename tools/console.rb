require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end


# Put your variables here~!

russell = Passenger.new("Russell")
nancy = Passenger.new("Nancy")
buck = Passenger.new("Buck")

lauren = Driver.new("Lauren")
katie = Driver.new("Katie")
matt = Driver.new("Matt")

russell_lauren = Ride.new(russell, lauren, 200)
russell_lauren2 = Ride.new(russell, lauren, 100)
nancy_lauren = Ride.new(nancy, lauren, 20)
buck_matt = Ride.new(buck, matt, 45)
russell_katie = Ride.new(russell, katie, 150)
nancy_matt = Ride.new(nancy, matt, 5.5)





binding.pry
