class Ride

    attr_reader :driver, :passenger, :distance
    @@all = []

    def initialize(driver, passenger, distance)
        @driver = driver
        @passenger = passenger
        @distance = distance
        @@all << self
    end

    def self.all
        @@all
    end

    def self.average_distance
        total_dist = self.all.sum {|ride| ride.distance}
        num_rides = self.all.count
        total_dist / num_rides
    end

end
