# - A Passenger has many rides

class Passenger
    
    attr_accessor :total_distance
    attr_reader :name

    @@all = []

    def initialize(name)
        @name = name
        @@all.push(self)
    end

    # instance methods

    def rides
        my_rides = []
        ride.all.select do |ride|
            if ride.passenger == self
                my_rides.push(ride)
            end
        end
        my_rides
    end

    def drivers
        my_drivers = []
        ride.all.select do |ride|
            if ride.passenger == self
                my_drivers.push(ride.driver)
            end
        end
        my_drivers
    end

    def total_distance
        my_distance = []
        ride.all.select do |ride|
            if ride.passenger == self
                my_distance.push(ride.distance)
            end
        end
        my_distance.reduce(:+)
    end

    # class methods

    def self.premium_members
        passenger_count = Hash.new(0)
        ride.each do |ride|
            passenger_count[ride.passenger] += ride.distance
        end
        passenger_count.select {|k,v| v >= 100}
    end

    def self.all
        @@all
    end

end
