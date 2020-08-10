class Ride

    attr_accessor :passenger, :driver, :distance

    @@all = Array.new

    def initialize(passenger, driver, distance)
        @driver = driver
        @passenger = passenger
        @distance = distance
        @@all.push(self)
    end

    def self.all
        @@all
    end

    def self.total_distance
        Ride.all.sum(0.0) do |e|
            e.distance
        end
    end



    def self.average_distance
        mean = self.total_distance / self.all.count do |v|
            v.distance
        end
        mean
    end
end
