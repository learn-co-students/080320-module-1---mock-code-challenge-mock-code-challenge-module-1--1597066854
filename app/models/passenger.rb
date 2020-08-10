
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
    
   
   ##this class only knows passenger names. Ride.all contains all distances
   
    # def self.premium_members   
    #     if 
    #     end 
    # end 

    def self.all
        @@all
    end 
           

end 