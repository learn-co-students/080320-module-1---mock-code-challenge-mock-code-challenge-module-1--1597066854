require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end


# Put your variables here~!
eileen = Passenger.new "Eileen"
brian = Passenger.new "Brian" 
eddie = Passenger.new "Eddie"
leah = Passenger.new "Leah"

rick = Driver.new "Rick"
bobbie = Driver.new "Bobbie"
anne = Driver.new "Anne"
barbarajean = Driver.new "Barbara-Jean"

ride0 = Ride.new rick, eileen, 12.3
ride1 = Ride.new bobbie, eddie, 17.1
ride2 = Ride.new barbarajean, brian, 7.5
ride3 = Ride.new anne, leah, 11.2
ride4 = Ride.new barbarajean, leah, 11.2
ride5 = Ride.new anne, eddie, 111.2
binding.pry
