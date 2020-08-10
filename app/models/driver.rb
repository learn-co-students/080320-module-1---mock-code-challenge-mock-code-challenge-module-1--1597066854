class Driver
    attr_accessor :name
    @@all =[]

    def initialize (name)
        @name = name
        @@all << self
    end

    def self.all 
        @@all
    end

    def rides
        self.all.filter {|ride| ride.dricer == self}
    end

    def passenger_name
        self.rides.map do |ride|
            ride.passenger
        end
    end

    def self.milage_cap(distance)
    end
    
        


end


