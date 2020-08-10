class Driver
    attr_accessor :name
    @@all = []

    def initialize(name)
        @name = name
    end

    def passenger_names
        #Returns an array of all Passengers' names a driver has driven. The names should be **unique** (no repeats).
        arr = []
        Ride.all.each { |ride| arr << ride.pasenger if ride.driver == self }
        arr
    end

    def rides
        #Returns an array of all Rides a driver has made
        arr = []
        Ride.all.each { |ride| arr << ride if ride.driver == self }
        arr
    end

    def self.all
        @@all
    end

    def self.mileage_cap(distance)
        #Takes an argument of a distance (float) and returns an array of all Drivers who have driven over the mileage
        arr = []
        Ride.all.each { |ride| arr << ride.driver if ride.miles > distance }
        arr.uniq
    end

end