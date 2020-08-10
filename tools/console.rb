require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end


# Put your variables here~!

passname = [ {:passname => "jay"},
{:passname => "Ray"},
{:passname => "Stacy"},
{:passname => "Alice"}
]

drivername = [
  {:drivername => "Guy"},
  {:drivername => "Jack"},
  {:drivername => "Pamela"},
  {:drivername => "Jenine"}
]

rides = [
{:distance => 4.6},
{:distance => 6.8},
{:distance => 10.5},
{:distance => 38.5},
{:distance => 387.4},
{:distance => 24.3},
{:distance => 1.1},
{:distance => 4.6},
{:distance => 5.4},
]

drivername.each { |driver| Driver.new(driver[:drivername])}
passname.each { |passenger| Passenger.new(passenger[:passname])}
rides.each {|ride| Ride.new(ride[:distance])}

binding.pry
