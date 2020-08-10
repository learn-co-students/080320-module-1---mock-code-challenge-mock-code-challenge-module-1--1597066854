class Driver

    attr_accessor :name

    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def rides
        Ride.all.select{|pr| pr.driver == self}
    end
    
    def passengers_names
         self.rides.map{|pr| pr.passenger}.uniq   
    end

    def self.mileage_cap(distance_cap)
        Ride.all.select do |ride|
            if ride.distance > distance_cap
                ride.driver
            end
            # Takes an argument of a distance (float) and returns an array of all Drivers who have driven over the mileage
        end
    end

end
