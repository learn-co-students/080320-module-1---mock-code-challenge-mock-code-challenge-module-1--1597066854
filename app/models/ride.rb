class Ride
    # Class variables section
    @@all = []

    # Attrs definition section
    attr_accessor :passenger, :driver, :distance

    # Class constructor sectio
    def initialize(passenger, driver, distance)
        self.passenger = passenger
        self.driver = driver
        self.distance = distance

        self.class.all << self
    end

    # Custom instance attribute getters/ setters section

    # instance methods section

    # Class methods section
    def self.all
        @@all
    end

    def self.average_distance
        self.all.inject(0){|sum, trip| sum + trip.distance } / self.all.size
    end
end
