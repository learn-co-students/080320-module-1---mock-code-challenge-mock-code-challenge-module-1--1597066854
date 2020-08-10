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

    def name
        @name
    end 

    def rides
        rides = Ride.all.select do |ride|
            ride.passenger == self
        end 
    end 

    def drivers
       drivers = Ride.all.select do |driver|
            driver.passenger == @driver
        end 
    end

    def total_distance

    end 
    
    
end 
