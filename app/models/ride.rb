#a ride belongs to a passenger and a driver 

class Ride
    attr_accessor :driver, :passenger, :distance
    @@all_rides = Array.new
    def initialize driver, passenger, distance
        @driver = driver
        @passenger = passenger
        @distance = distance 
        @@all_rides << self
    end

    # def passenger
    #     @passenger
    # end

    # def driver
    #     @driver
    # end

    # def distance
    #     @distance
    # end

    def self.all
        @@all_rides
    end

    def self.average_distance
    end
end