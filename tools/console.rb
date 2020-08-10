require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

jallen = Passenger.new("Jallen")
caryn = Passenger.new("Caryn")

teddy = Driver.new("Teddy")
val = Driver.new("Val")

binding.pry
