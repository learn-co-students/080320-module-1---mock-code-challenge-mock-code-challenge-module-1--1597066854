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

    def rides
        Ride.all.select{|ride|ride.driver == self }
    end

    def passenger_names
        rides.map{|ride| ride.passenger}.uniq
    end

    def total_distance_driven
        # total = 0
        # rides.each{|ride| total += ride.distance}
        # total
        rides.reduce(0) { |sum, ride| sum + ride.distance }
    end

    def self.mileage_cap(distance)
        # Ride.all.select{|ride| ride.distance > distance}.map{|ride|ride.driver}
        all.select{|driver| driver.total_distance_driven > distance}
    end


end
