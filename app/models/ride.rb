class Ride
    attr_accessor :driver, :passenger

    @@all =[]
    def initialize(driver, passenger, distance)
        @driver = driver
        @passenger = passenger
        @distance = distance.to_f
        @@all << self
    end

    def self.all
        @@all
    end

    # def self.average_distance  <== saw .inject method on google but not sure how to implement
    
    # end
end
