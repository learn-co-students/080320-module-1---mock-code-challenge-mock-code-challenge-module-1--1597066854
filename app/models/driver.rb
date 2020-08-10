class Driver
    attr_accessor :name # accessor bc readme doesn't say this shouldn't be changed (even though it says passenger names shouldn't)
    @@all = []

    def initialize(name)
        @name = name

        self.class.all << self
    end

    def self.all
        @@all
    end

    def rides
        Ride.all.select do |ride|
            ride.driver == self
        end
    end

    def passenger_names
        passengers = rides.map do |ride|
            ride.passenger.name
        end

        passengers.uniq
    end

    def total_distance 
        distances = rides.map do |ride|
            ride.distance
        end

        distances.sum(0.0)
    end

    def self.mileage_cap(distance)
        
        self.all.select do |driver|
            driver.total_distance > distance
        end
        
    end
end

