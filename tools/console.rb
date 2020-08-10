require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end


# Put your variables here~!

#drivers
bert = Driver.new("Bert")
leslie = Driver.new("Leslie")
jon = Driver.new("Jon")
kirk = Driver.new("Kirk")
antoine = Driver.new("Antoine")

#passengers
tony = Passenger.new("Tony")
rena = Passenger.new("Rena")
sophia = Passenger.new("Sophia")
colin = Passenger.new("Colin")
dermot = Passenger.new("Dermot")

binding.pry
