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

    def passenger_names
        rides.map do |e|
            e.passenger
        end.map do |e|
            e.name
        end.uniq
    end

    def self.mileage_cap_distance(cap)
        Ride.all.select do |e|
            e.driver.total_distance > cap.to_f
        end.map do |e|
            e.driver
        end.uniq
    end
    
end
