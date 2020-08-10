class Driver
    attr_reader :name
    @@all = []

    def self.all
        @@all
    end

    def self.mileage_cap(distance)
        distance *= 1.0  
        # I don't trust myself to always put in a float
        self.all.select {|driver| driver.total_distance > distance }
    end

    def initialize(name)
        @name = name
        @@all << self
    end

    # name taken care of by attr_reader

    def passenger_names
        # passenger names UNIQUE!!!
        rides.map {|ride| ride.passenger}.uniq
    end

    def rides 
        # all the rides
        Ride.all.select { |ride| ride.driver == self}
    end

    def total_distance
        rides.sum { |ride| ride.distance}
    end


end