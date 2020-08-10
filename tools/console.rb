require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end



jeff = Driver.new("Jeff")

tim = Passenger.new("Tim")

# Put your variables here~!

binding.pry
