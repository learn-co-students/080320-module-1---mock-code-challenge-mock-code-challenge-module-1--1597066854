
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

    def name(name)
        @name
    end

    def rides
        Ride.all.filter {|ride| ride.passenger == self}
    end

    def drivers
        self.rides.map do |ride|
            ride.drivers
        end
    end

    def total_distance
        


end
