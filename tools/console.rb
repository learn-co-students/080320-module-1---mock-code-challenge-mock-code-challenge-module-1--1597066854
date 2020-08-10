require 'pry'
# require_relative '../config/environment.rb'
require_relative '../app/models/driver.rb'
require_relative '../app/models/passenger.rb'
require_relative '../app/models/ride.rb'

def reload
  load 'config/environment.rb'
end

joe = Passenger.new("Joe")
kim = Passenger.new("Kim")
greg = Passenger.new("Greg")

emily = Driver.new("Emily")
kevin = Driver.new("Kevin")
randy = Driver.new("Randy")

binding.pry
