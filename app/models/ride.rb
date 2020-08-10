#jtable

class Ride

    @@all = [];

    def self.all
        @@all;
    end

    attr_accessor :passenger, :driver, :distance

    def initialize(passenger, driver, distance)
        @passenger = passenger;
        @driver = driver;
        @distance = distance.to_f;

        self.class.all.push(self);
    end

    def self.average_distance
        (self.all.reduce(0){|sum, el| sum + el.distance}) / self.all.length;
    end
end

# ride works thru accessor
# driver works thru accessor
# distance works thru accessor and uses .to_f to make float;
# Ride.average distance uses reduce to sum the Ride.all array and the divides by the length