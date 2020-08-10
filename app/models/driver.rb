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
        Ride.all.select do |ride|
            ride.driver == self
        end
    end

    def self.passenger_name
        Driver.all.select do |driver|
        Passenger.driver == self
        end
    end


    
end

