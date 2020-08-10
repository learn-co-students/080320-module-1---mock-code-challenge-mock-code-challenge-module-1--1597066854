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


# Put your variables here~!

binding.pry
