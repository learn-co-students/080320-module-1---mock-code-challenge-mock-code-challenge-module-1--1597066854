#a ride belongs to a passenger and a driver 

class Ride
    attr_reader :driver, :passenger, :distance
    @@all_rides = Array.new
    def initialize driver, passenger, distance
        @driver = driver
        @passenger = passenger
        @distance = distance 
        @@all_rides << self
    end

    def self.all
        @@all_rides
    end

    def self.average_distance
        rides = @@all_rides.map do |x|
                    x.distance
                 end
        average_distance = rides.sum / @@all_rides.count
        "The average distance across all rides is #{average_distance} miles."
    end

 
end