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

    def self.mileage_cap(distance)
        Ride.all.select{|ride| ride.distance > distance}.map{|ride|ride.driver}
    end


end
