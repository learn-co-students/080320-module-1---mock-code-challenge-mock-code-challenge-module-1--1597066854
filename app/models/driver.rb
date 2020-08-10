class Driver
    attr_accessor :name
    @@all = []

    def initialize(name)
        @name = name
    end

    def passenger_names
        #Returns an array of all Passengers' names a driver has driven. The names should be **unique** (no repeats).
        # Ride.all.map { |ride| ride.passenger.name if ride.driver == self }.compact.uniq
        Ride.all.reduce([]) { |a, ride| a << ride.passenger.name if ride.driver == self; a }.uniq
    end

    def rides
        #Returns an array of all Rides a driver has made
        Ride.all.select { |ride| ride.driver == self }
    end

    def self.all
        @@all
    end

    def self.mileage_cap(distance)
        #Takes an argument of a distance (float) and returns an array of all Drivers who have driven over the mileage
        # Ride.all.map { |ride| ride.driver if ride.miles > distance }.compact.uniq
        Ride.all.reduce([]) { |a, ride| a << ride.driver if ride.miles > distance; a }.uniq
    end

end