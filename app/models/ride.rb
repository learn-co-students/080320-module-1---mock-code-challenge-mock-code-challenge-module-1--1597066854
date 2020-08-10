class Ride
    attr_reader :passenger, :driver, :distance
    @@all = []
    def initialize(passenger, rider, distance)
        @passenger = passenger
        @driver = driver
        @distance = 4.6
        @@all << self
    end


    

end