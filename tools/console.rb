require_relative "../config/environment.rb"
require_relative "../app/models/driver.rb"
require_relative "../app/models/passenger.rb"
require_relative "../app/models/ride.rb"

def reload
  load 'config/environment.rb'
end

tom = Passenger.new("Tom")
larry = Passenger.new("Harry")
sally = Passenger.new("Sally")

angela = Driver.new("Angela")
moe = Driver.new("Moe")
oscar = Driver.new("Oscar")

ride1 = Ride.new(angela, tom, 50)
ride2 = Ride.new(moe, larry, 25)
ride3 = Ride.new(oscar, tom, 30)
ride4 = Ride.new(angela, sally, 40)
ride5 = Ride.new(angela, tom, 20)


# Put your variables here~!

binding.pry
