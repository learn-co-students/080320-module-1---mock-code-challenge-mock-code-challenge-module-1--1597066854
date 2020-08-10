class Driver

    attr_accessor :name

    @@all = Array.new

    def initialize(name)
        @name = name
        @@all.push(self)
    end

    def self.all
        @@all
    end
        
    def rides
        Ride.all.select do |e|
            e.driver == self
        end
    end

    def total_distance
        rides.sum(0.0) do |e|
            e.distance
        end
    end

    def self.mileage_cap_distance(cap)
        Ride.all.select do |e|
            e.driver.total_distance > cap
        end.map do |e|
            e.driver
        end.uniq
    end
end
