class Passenger

    attr_reader :name
    attr_accessor :rides, :drivers

    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def rides
        Ride.all.filter do |ride|
            ride.passenger == self
        end
    end

    def drivers
        drivers = []
        Ride.all.filter do |ride|
            if ride.passenger == self
                drivers << ride.driver
            end
        end
        drivers.uniq
    end

    def total_distance
        distances = []
        Ride.all.filter do |ride|
            if ride.passenger == self
                distances << ride.distance 
            end
        end
        distances.sum.to_f
    end

    def self.premium_members
        passengers = []
        self.all.filter do |passenger|
            if passenger.total_distance > 100
                passengers << passenger
            end
        end
        passengers
    end






end

