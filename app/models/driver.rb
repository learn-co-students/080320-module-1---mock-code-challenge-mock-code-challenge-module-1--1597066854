class Driver
    # Class variables section
    @@all = []

    # Attrs definition section
    attr_accessor :name

    # Class constructor sectio
    def initialize(name)
        self.name = name
        
        self.class.all << self
    end

    # Custom instance attribute getters/ setters section

    # instance methods section
    def rides
        Trip.all.filter do |trip|
            trip.driver == self
        end
    end

    def rides_count
        self.trips.count
    end

    def passenger_names
        self.trips.map do |mytrip|
            mytrip.passenger.name
        end.uniq
    end

    def total_mileage
        self.rides.inject do |sum, ride|
            sum + ride.distance
        end
    end

    # Class methods section
    def self.all
        @@all
    end

    def self.mileage_cap(distance_cap)
        self.all.filter do |driver|
            driver.total_mileage > distance_cap
        end
    end
end
