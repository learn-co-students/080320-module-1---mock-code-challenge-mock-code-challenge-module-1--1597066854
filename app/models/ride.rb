
class Ride

    attr_accessor :passenger, :distance, :driver
    
    def initialize(passenger, driver, distance)
        @passenger = passenger
        @driver = driver
        @distance = distance
    end 

end 

