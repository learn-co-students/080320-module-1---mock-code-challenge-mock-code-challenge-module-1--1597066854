
class Ride
    attr_reader :distance, :passenger, :driver
    @@all = []

    def initialize(distance, passenger, driver) #driver instance and passenger instance
        @distance = distance.to_f #refers to miles
        @passenger = passenger
        @driver = driver
        self.class.all << self
    end

    def self.all
        @@all
    end

    def self.average_distance #Returns the average distance across ALL rides
        self.all.map do |ride|  
            ride.distance
        end.sum / (self.all.length)
    end
end


