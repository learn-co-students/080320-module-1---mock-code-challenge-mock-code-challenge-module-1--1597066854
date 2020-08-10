#has many
class Passenger
    @@all =[] 
    
    attr_accessor :name :driver

    def initialize (name)
        @name = name
        @driver = driver #source of truth for idintifying the driver(owner)
        @@all << self
    end

    def rides #Returns an array of Ride instances that this person has been on
        Rides.all.select do |ele|
            rides.passenger == self
    end

    def total_distance # i need to goto source of truth ,ride class, and pull out
            self.rides.filter do |ele|
                ele.distance == "distance"
        
    end

    def all   #implicit
        @@all
    end

    def premium_member 
        #pulls from array of all passengers
        @@passanger.total_distance.select > 100
    end








end


