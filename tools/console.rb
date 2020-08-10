require_relative '../config/environment.rb'
require_relative '../app/models/driver.rb'
require_relative '../app/models/passenger.rb'
require_relative '../app/models/ride.rb'

def reload
  load 'config/environment.rb'
end

ed = Driver.new("Ed")
ted = Driver.new("Ted")
jeff = Driver.new("Jeff")


jill = Passenger.new("Jill")
steph = Passenger.new("Steph")
margo = Passenger.new("Margo")
liz = Passenger.new("Liz")
hill = Passenger.new("Hill")

r1 = Ride.new(ed, steph, 3.5)
r2 = Ride.new(ed, jill, 3.8)
r3 = Ride.new(ted, margo, 2.9)
r4 = Ride.new(jeff, liz, 5.3)
r5 = Ride.new(jeff, hill, 105)



# Put your variables here~!

binding.pry
