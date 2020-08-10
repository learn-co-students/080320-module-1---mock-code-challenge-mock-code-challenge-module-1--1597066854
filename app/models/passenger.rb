
class Passenger

    attr_reader :name
    @@all = []
    @@premium_members = [] 
    
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
        rides.map do |ride|
            ride.driver
        end
    end

    def distance
        rides.map do |ride|
            ride.distance 
        end  
    end

    def total_distance
        distance.inject(:+) 
    end
    
    def self.premium_members   ##the class only knows passenger names? Go to Ride.all
        if self.total_distance > 100.0
            @@premium_members << self
        end 
    end 

    def self.all
        @@all
    end 
           

end 