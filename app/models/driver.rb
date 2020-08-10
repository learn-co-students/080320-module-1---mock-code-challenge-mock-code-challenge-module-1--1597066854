# - A Driver has many rides
class Driver

    attr_accessor :name
    @@all = []

    def initialize(name)
        @name = name

        @@all.push(self)
    end

    #instance methods
    def passenger_names
        my_passengers = []
        Ride.all.select do |ride|
            if ride.driver == self
                my_passengers.push(ride.passenger)
            end
        end
        my_passengers.uniq
    end

    def rides
        my_rides = []
        Ride.alls.select do |ride|
            if ride.driver == self
                my_rides.push(ride)
            end
        end
    end

    #class methods
    def self.mileage_cap(distance)
        ##
        total_distance = Hash.new(0)
        Ride.each do |ride|
            total_distance[ride.driver] += ride.distance
        end
        total_distance.select {|k,v| v > distance}
    end

    def self.all
        @@all
    end
end