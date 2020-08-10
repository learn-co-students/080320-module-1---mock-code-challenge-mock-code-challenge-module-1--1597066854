#driver has many rides
#driver has many passengers through its rides

class Driver
    attr_accessor :name
    @@all_drivers = Array.new
    def initialize name
        @name = name
        @@all_drivers << self
    end

    def passenger_names
    end

    def rides
        Ride.all.select do |x|
            x.driver == self
        end
    end

    def self.all
        @@all_drivers
    end

    def self.mileage_cap distance
    end
end