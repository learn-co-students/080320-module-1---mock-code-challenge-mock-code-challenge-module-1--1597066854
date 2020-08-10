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
        Ride.all.select do |ride|
            if ride.passenger == self
                my_rides.push(ride)
            end
        end
        my_rides
    end

    def drivers
        my_drivers = []
        Ride.all.select do |ride|
            if ride.passenger == self
                my_drivers.push(ride.driver)
            end
        end
        my_drivers
    end

    def total_distance
        my_distance = []
        Ride.all.select do |ride|
            if ride.passenger == self
                my_distance.push(ride.distance)
            end
        end
        my_distance.reduce(:+)
    end

    # class methods

    def self.premium_members
        prem_mem = []

        passenger_count = Hash.new(0)
        Ride.all.each do |ride|
            passenger_count[ride.passenger] += ride.distance
        end
        prem_mem.push(passenger_count.select {|k,v| v >= 100})
        prem_mem
    end

    def self.all
        @@all
    end

end
