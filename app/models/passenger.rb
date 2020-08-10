class Passenger

    attr_accessor
    attr_reader :name

    @@all = []

    def initialize (name)
        @name = name
        @@all << self
    end
    
    def self.all
        @@all
    end

    def rides
        Ride.all.select do |ride|
            ride.passenger == self
        end
    end

    def drivers
        rides.map do |ride|
            rides.driver
        end
    end

    def total_distance
        total = 0.0
        self.rides.each do |ride|
            total += ride.distance
        end
        total
    end
end

