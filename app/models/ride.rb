class Ride #belongs to many

    attr_accessor :driver :passenger
        @@all=[]

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

    def self.all #class method to read data for passenger and driver to pull from
        @@all
    end

    def save.all # to save each instances of drives in an array
        @@ all << self
    end


end        
