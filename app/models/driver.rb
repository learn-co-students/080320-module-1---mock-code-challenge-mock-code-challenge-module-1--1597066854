class Driver

    attr_reader :name

    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def pickup_ride(passenger, dist_float)
        Passenger.new(self, passenger, dist_float)
    end

    def rides
        Ride.all.select {|ride| ride.driver == self}
    end

    def passenger_names
        self.rides.map {|ride| ride.passenger}.uniq
    end

    def total_distance
        self.rides.sum {|ride| ride.distance}
    end

    def self.mileage_cap(distance)
        self.all.select {|driver| driver.total_distance > distance}
    end
end
