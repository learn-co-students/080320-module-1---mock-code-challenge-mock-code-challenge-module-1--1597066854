class Passenger

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
            e.passenger == self
        end
    end

    def drivers
        rides.map do |e|
            e.driver
        end
    end

    def total_distance
        rides.sum(0.0) do |e|
            e.distance
        end
    end
    
    def self.premium_members
        Ride.all.select do |e|
            e.distance > 100
        end.map do |v|
            v.passenger
        end
    end

end
