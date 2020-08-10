require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end


# Put your variables here~!

testP1 = Passenger.new('joe');
testP2 = Passenger.new('bob');
testP3 = Passenger.new('craig');

testD1 = Driver.new('marhsal');
testD2 = Driver.new('lemon');
testD3 = Driver.new('butat');

ride1 = Ride.new(testP1, testD1, 200)
rideDuplicate = Ride.new(testP1, testD1, 200)

ride2 = Ride.new(testP1, testD2, 200)
ride3 = Ride.new(testP2, testD1, 200)
ride4 = Ride.new(testP3, testD1, 200)
ride5 = Ride.new(testP3, testD3, 200)
ride6 = Ride.new(testP2, testD3, 200)






binding.pry
