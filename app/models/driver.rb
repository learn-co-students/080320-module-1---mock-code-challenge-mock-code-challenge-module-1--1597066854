class Driver

    attr_accessor :name

    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def rides
        Ride.all.select { |rides| rides.driver == self}
    end

    def passenger_names
        rides.map { |rides| rides.passenger }.uniq
    end

    def total_distance
        rides.sum { |rides| rides.distance }
    end

    def self.mileage_cap(distance)
        self.all.select { |drivers| drivers.total_distance > distance }
    end
end
