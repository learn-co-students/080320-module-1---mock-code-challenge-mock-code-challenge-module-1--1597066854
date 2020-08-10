require 'pry'

class Driver 
    attr reader :name
    attr accesspr :rides
    @@all = []

    def initialize(name, rides)
        @name = "name"
        @rides = rides
        @@all << self 
    end 


    ## 1. Use the Ride array (connecting the driver and passenger instances) to get individual passenger names
    
    def passenger_names
        ride.map do |pn|
            pn.passenger
        end 
    end 

    ## 1. Return array of all drivers who have driven over the mileage cap 
    def milage_cap(distance.to_f)

    end

    def self.all
        @@all
    end

end 

