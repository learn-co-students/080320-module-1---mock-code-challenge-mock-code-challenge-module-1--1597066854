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

    def self.average_distance
        total_distance = []
        Ride.all.select do |rides|
        total_distance << rides.distance
        total_distance.sum(0.0)
        end
        total_distance
        # Returns the average distance across ALL rides
    end

end