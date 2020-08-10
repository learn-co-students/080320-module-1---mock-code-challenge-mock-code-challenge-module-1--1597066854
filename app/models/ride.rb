class Ride
    attr_reader :passenger, :driver
    attr_accessor :distance
    @@all = []
    def initialize(passenger, rider, distance)
        @passenger = passenger
        @driver = driver
        @distance = distance.to_f
        @@all << self
    end
    def self.all
        @@all
    end
    def average_distance
        
    end

   


    

end