#has many

class Driver 
    attr_accessor :name
    
    def initialize(name)
        @name = name
    end

    def passenger_name #need to go to source of truth, the passenger and driver names associate with self, the driver
        Passenger.all.slect do |passenger|
            passenger.driver == self
    end

    def rides #Returns an array of all Rides a driver has made
        Rides.all.select do |rides|
            rides.owner == self
    end

    def mileage_cap(distance) #takes an argument of a distance (float) and returns an array of all Drivers who have driven over the mileage

end

