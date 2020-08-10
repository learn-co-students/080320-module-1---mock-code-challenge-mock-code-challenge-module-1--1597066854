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

    def passenger
        @passenger
    end

    def driver
        @driver
    end

    def distance
        @distance
    end

    def self.average_distance
        sum = Ride.all.map{|rides| rides.distance} 
        sum.sum / sum.length 
    end
    

end
