
class Ride

    attr_accessor :passenger, :distance, :driver
    @@all = []
    
    def initialize(passenger, driver, distance)
        @passenger = passenger
        @driver = driver
        @distance = distance
        @@all << self
    end

    def self.average_distance
       
    end 
    
    def self.all
        @@all
    end 

end 

