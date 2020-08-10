# - A Driver has many rides
class Driver

    attr_accessor :name

    def initialize(name)
        @name = name
    end

    #instance methods
    def passenger_names
        my_passengers = []
        ride.all.select do |ride|
            if ride.driver == self
                my_passengers.push(ride.passenger)
            end
        end
        my_passengers.uniq
    end

    def rides
        my_rides = []
        ride.alls.select do |ride|
            if ride.driver == self
                my_rides.push(ride)
            end
        end
    end

    #class methods
    def self.mileage_cap(distance)
        ##
        total_distance = []
        passenger_count = Hash.new(0)
        ride.each do |ride|
            passenger_count[ride.passenger] += ride.distance
        end
        passenger_count.select {|k,v| v >= 100}
        
        
        
        distance_drivers = []
        ride.all.select do |ride|
            if 
            distance_drivers
        end
    end

    def self.all
        @@all
    end
end