class Ride

    attr_accessor :driver, :passenger, :distance

    def initialize(driver, passenger, distance)
        @driver = driver
        @passenger = passenger
        @distance = 0.0
    end

    def self.average_distance
        self.distance.inject{ |sum, el| sum + el }.to_f / self.distance.size
    end
    
end