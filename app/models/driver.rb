class Driver
    attr_reader :name
    @@all = []

    def initialize(name) #initialize with the driver name as string
        @name = name
        self.class.all << self
    end

    def self.all #returns an array of all drivers
        @@all
    end

    def rides #returns an array of all Rides a driver has made
        Ride.all.select do |ride|
            ride.driver == self
        end
    end

    def passenger_names #returns an array of all Passengers' names a driver has driven. The names should be **unique**
        rides.map do |ride|
            ride.passenger
        end.uniq
    end

    def total_miles_driven #created for #mileage_cap method
        rides.map do |ride|
            ride.distance
        end.sum
    end

    def self.mileage_cap(distance) #takes an argument of a distance (float) and returns an array of all Drivers who have driven over the mileage
        self.all.select do |driver|
           driver.total_miles_driven > distance
        end
    end
end




