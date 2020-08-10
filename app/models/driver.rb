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
        rides = Ride.all.select do |driver|
            driver.ride == self
        end 
    end 
    #def passenger_names
     #   Ride.all.map { |passenger| ride.passenger_names =}
    #end 
end 
