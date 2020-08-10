class Passenger
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
        Ride.all.select do |trip|
            trip.passenger == self
        end 
    end

    def drivers
        Ride.all.select do |trip|
            trip.driver == self
        end

    end



end