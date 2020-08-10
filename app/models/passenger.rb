class Passenger
    
    attr_reader :name
    
    @@all = []

    def self.all
        @@all
    end

    def self.premium_members
        # > 100 total_distance
        self.all.select {|ride| ride.total_distance > 100}
    end

    def initialize(name)
        @name = name
        @@all << self
    end

    #name taken care of by attr_reader 
    def rides
        # finds rides
        Ride.all.select {|ride| ride.passenger == self }
    end

    def drivers
        # finds drivers
        rides.map { |ride| ride.driver } #didn't ask for unique but could add .uniq
    end

    def total_distance
        #total from rides
        rides.sum { |ride| ride.distance }
    end


    
end