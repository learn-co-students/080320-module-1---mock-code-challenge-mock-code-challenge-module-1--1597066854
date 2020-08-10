class Passenger

    attr_reader :name

    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def rides
        Ride.all.select{|pr| pr.passenger == self}
    end
    
    def drivers
         self.rides.map{|pr| pr.driver}   
    end

    def self.premium_members
        Ride.all.select do |ride|
            if ride.distance > 100
                ride.passenger
            end
        end
        
        # Returns an array of all Passengers who have travelled over 100 miles in total with the service
    end
end
