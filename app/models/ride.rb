class Ride 
    attr_accessor :passenger, :driver, :distance
    
    @@all = []
    @@distance = []

    def initialize(driver, passenger, distance)
        @driver = driver
        @passenger = passenger 
        @distance = distance.to_f
        @@all << self
        @@distance << distance
    end 

    def self.all 
        @@all
    end 

    def self.average_distance
        total_distance = @@distance.inject(0) {|sum, i|  sum + i }
        average_distance = total_distance/(@@distance.length)
        average_distance

    end 

    
end 


