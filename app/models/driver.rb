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

    def name
        @name
    end

    def rides
        Ride.all.select do |rides|
            rides.driver == self
        end
    end

    def passenger_names
        rides.map do |rides|
            rides.passenger
        end.uniq
    end


    def self.average_distance
        sum = Ride.all.map{|rides| rides.distance} 
        sum.sum / sum.length 
    end


end 
