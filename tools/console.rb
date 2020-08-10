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


# Put your variables here~!

binding.pry
