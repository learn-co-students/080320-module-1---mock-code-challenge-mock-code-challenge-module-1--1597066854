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

    def mileage_cap(distance)
        
    end

end
