
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
        Ride.all.filter {|ride| ride.passenger == self}
    end

    def drivers
        self.rides.map do |ride|
            ride.drivers
        end
    end

    def total_distance
        total = 0
        rides.each do |ride|
            total += ride.distance 
        end
        total
    end


end
