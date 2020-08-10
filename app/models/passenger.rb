class Passenger 
    attr_reader :name 
    
    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end 

    def rides 
        Ride.all.select do |ride|
            ride.passenger == self
        end 
    end 

    def drivers 
        drivers= rides.map do |ride|
            ride.driver
        end 
        drivers.uniq
    end 

    def total_distance 
        all_rides= rides.map do |ride|
            ride.distance 
        end
        all_rides.inject(0) {|sum, i|  sum + i }
    end 

    def self.all 
        @@all
    end 

    def self.premium_members
        self.all.filter do |passenger|
            if passenger.total_distance > 100
                passenger
            end 
        end
    end 

end 


