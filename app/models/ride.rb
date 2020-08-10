class Ride
    attr_accessor :passenger, :driver, :distance
    @@all = []

    def initialize(driver, passenger, distance)
        @driver = driver
        @passenger = passenger
        @distance = distance

        self.class.all << self
    end

    def self.all
        @@all
    end

    def self.average_distance
        distances = self.all.map do |ride|
            ride.distance
        end

        distances.sum(0.0) / distances.length
    end

end