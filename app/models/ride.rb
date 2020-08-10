class Ride #belongs to many

    attr_accessor :driver :passenger

    def initialize (driver, passenger,distance )
        @driver = driver
        @passanger =passenger
        @distance = distance.to_f
    end 

    def passenger #returns the passenger instance associated with the ride instance
        self.passenger.name
    end

    def driver #returns the driver instance associated with  ride instance
        self.driver.name 
    end

    def distance #Returns the distance of the ride

    end

    def average_distance #Returns the average distance across ALL rides

    end

end        
