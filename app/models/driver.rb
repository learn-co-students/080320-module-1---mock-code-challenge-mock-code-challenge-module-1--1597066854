class Driver 
    attr_accessor :name

    @@all = [] 

    def initialize(name)
        @name = name 
        @@all << self
    end
    
    def rides 
        Ride.all.select do |ride|
            ride.driver == self
        end 
    end 

    def passenger_names 
        passengers= rides.map do |ride|
            ride.passenger.name
        end
        passengers.uniq
    end 

    def self.all 
        @@all
    end 

    def total_distance 
        all_rides= rides.map do |ride|
            ride.distance 
        end
        all_rides.inject(0) {|sum, i|  sum + i }
    end  

    def self.mileage_cap(distance)
        self.all.filter do |driver|
            if driver.total_distance > distance
                driver
            end
        end 
    end 

end 

