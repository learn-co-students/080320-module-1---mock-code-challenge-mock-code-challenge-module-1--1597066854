class Ride

    attr_accessor :driver, :passenger, :distance

    @@all = []

    def initialize(driver, passenger, distance)
        @driver = driver
        @passenger = passenger
        @distance = distance.to_f
        @@all << self
    end

    def self.all
        @@all
    end

    def self.total_d
        total_distance = []
        Ride.all.select do |rides|
        total_distance << rides.distance
        end
        total_distance.sum
        # Returns the average distance across ALL rides
    end

    def self.average_distance
        ride_count = []
        Ride.all.select do |rides|
        ride_count << rides.distance
        end
        total_d / ride_count.length 
    end

end