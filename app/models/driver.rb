class Driver
    attr_accessor :name

    @@all = []
    def initialize(name)
        @name = name
        @@all << self
    end

    ###passenger names needs to be *unique*. [array].uniq??
    def passenger_names
        Passenger.all.select do |psgr|
            psgr.driver == self
        end
        passenger_names.uniq
    end
    
    def rides
        Rides.all.select do |ride|
            ride.driver == self
        end
    end

    def self.all
        @@all
    end

    def self.mileage_cap(distance)
        self.all.filter do |miles|
            miles.distance > distance
        end
    end
end
