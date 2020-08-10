# - A Ride belongs to a passenger and a driver
# - pass through class

# Ride: 
#   1 driver 
#   array of passengers

class Ride

    attr_accessor :driver, :passenger, :distance
    attr_reader :ride_num
    @@all = []

    def initialize(ride_num, driver, passenger, distance)
        @driver = driver
        @passenger = passenger
        @distance = distance.to_f

        @ride_num = ride_num

        @@all.push(self)
    end



    #class method
    def self.average_distance
        ride_distances = []
        Ride.all.each do |ride|
            ride_distances.push(ride.distance)
        end
        ride_distances.inject(0.0){ |sum, dis| sum + dis } / self.all.size
        ## add function to round to 0.00 place
    end

    def self.all
        @@all
    end


end