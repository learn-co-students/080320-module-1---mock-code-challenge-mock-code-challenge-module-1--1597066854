class Ride
    attr_reader :passenger, :driver, :distance
    @@all = []

    def self.all
        @@all
    end

    def self.average_distance
        #  average distance across all rides
        (Ride.all.sum {|ride| ride.distance}/ Ride.all.length)
    end
    
    def initialize(driver, passenger, distance)
        @driver = driver
        @passenger = passenger
        @distance = (distance * 1.0)
        @@all << self
    end

    # passenger,driver,distance taken care of by attr_reader 

end