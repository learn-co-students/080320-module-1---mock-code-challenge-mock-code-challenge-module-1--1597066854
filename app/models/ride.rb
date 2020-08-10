# - A Ride belongs to a passenger and a driver
# - pass through class

# Ride: 
#   1 driver 
#   array of passengers

class Ride

    attr_accessor :driver, :passenger, :distance
    @@all = []

    def initialize(driver, passenger, distance)
        @driver = driver
        @passenger = passenger
        @distance = distance.to_f

        @@all.push(self)
    end



    #class method
    def self.average_distance
        self.all.distance.inject(0.0){ |sum, dis| sum + dis } / self.all.size
    end

    def self.all
        @@all
    end


end