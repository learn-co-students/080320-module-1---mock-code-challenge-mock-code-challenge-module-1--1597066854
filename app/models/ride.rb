class Ride
    attr_accessor :driver, :passenger, :distance

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
        # average = 0
        # all.each{|ride| average += (ride.distance/all.length)}
        # average 
        all.reduce(0) { |sum, ride| sum + (ride.distance/all.length) }
    end


end
