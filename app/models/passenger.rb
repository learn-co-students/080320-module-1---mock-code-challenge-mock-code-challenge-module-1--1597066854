
class Passenger
    attr_reader :name #so name cannot be changed
    @@all = []

    def initialize(name) #initialzie with passenger name as string
        @name = name
        self.class.all << self
    end

    def self.all #returns an array of all passengers
        @@all
    end

    def rides #returns an array of Ride instances that this person has been on
        Ride.all.select do |ride|
            ride.passenger == self
        end
    end

    def drivers #returns an array of Driver instances that this person has rode with
        rides.map do |ride|
            ride.driver
        end
    end

    def total_distance #returns the floating number that represents the total distance the passenger has travelled
        rides.map do |ride|
            ride.distance
        end.sum
    end

    def self.premium_members #returns an array of all Passengers who have travelled over 100 miles
        self.all.select do |passenger|
            passenger.total_distance > 100
        end
    end
end



