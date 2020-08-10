#passenger has many rides
#passenger has many drivers through its rides

class Passenger
    attr_reader :name
    @@all_passengers = Array.new
    def initialize name
        @name = name
        @@all_passengers << self
    end

    def rides
        Ride.all.select do |x|
            x.passenger == self
        end
    end

    def drivers
        Ride.all.select do |x|
            if x.passenger == self
                x.driver
            end
        end
    end

    def total_distance
        tripmiles = Ride.all.select do |x|
            x.passenger == self
            end
        totalmiles = tripmiles.map do |x|
            x.distance 
        end   
        totalmiles.sum
        "#{self.name} has travelled #{totalmiles.sum} miles with BetterLyft!"
    end

    def self.all
        @@all_passengers
    end

    def self.premium_members
    end
end