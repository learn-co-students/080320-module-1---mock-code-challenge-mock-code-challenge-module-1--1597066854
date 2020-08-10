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
        Ride.all.filter do |trip|
            trip.passenger == self
        end
    end

    def rides_count
        self.rides.count
    end

    def drivers
        self.rides.map do |mytrip|
            mytrip.driver
        end
    end

    def total_distance
        self.rides.inject(0) do |sum, ride|
            sum + ride.distance
        end
    end

    def ride(driver, distance)
        Ride.new(self, driver, distance)
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

