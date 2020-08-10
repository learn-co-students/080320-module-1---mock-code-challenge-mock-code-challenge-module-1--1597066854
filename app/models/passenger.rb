class Passenger
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

    def drivers
        self.trips.map do |mytrip|
            mytrip.driver
        end
    end

    def total_distance
        self.rides.inject do |sum, ride|
            sum + ride.distance
        end
    end

    # Class methods section
    def self.all
        @@all
    end

    def self.premium_members
        self.all.filter do |passenger|
            passenger.total_distance > 100
        end
    end
end

