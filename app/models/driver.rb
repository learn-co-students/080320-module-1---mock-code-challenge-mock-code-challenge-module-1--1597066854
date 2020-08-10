
class Driver

    attr_accessor :name 
    @@all = []
    
    def initialize(name)
        @name = name
        @@all << self
    end

    def passengers
        rides.map do |ride|
            ride.passenger.name 
        end
    end

    def passenger_names   ###consolidate
        passengers.uniq
    end 

    def rides
        Ride.all.select do |ride|
            ride.driver == self
        end
    end

    def self.all
        @@all
    end

end 