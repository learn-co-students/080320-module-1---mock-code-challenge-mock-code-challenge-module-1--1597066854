#has many
class Passenger
    @@all =[] 
    
    attr_accessor :name

    def initialize (name)
        @name = name
        @@all << self
    end

    def rides #Returns an array of Ride instances that this person has been on
        Rides.all.select do |ele|
            rides.passenger == self
    end

    def total_distance #returns the floating number that represents the total distance the passenger has travelled using the service
    
    end

    def all
        @@all
    end

    def premium_member 
        #pulls from array of all passengers
        @@passanger.total_distance.select > 100
    end








end


