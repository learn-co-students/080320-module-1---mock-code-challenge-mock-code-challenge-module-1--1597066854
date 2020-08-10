class Passenger
    attr_reader :name
    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def rides
        #returns all rides self has been on
        Ride.all.select { |ride| ride.passenger == self }
    end

    def drivers
        #Returns an array of Driver instances that this person has rode with
        # Ride.all.map { |ride| ride.driver if ride.passenger == self }.compact
        
        # better option according to stack overflow
        # "This is the most efficient since it only loops over the list with one pass (map + select or compact requires two passes)."
        Ride.all.reduce([]) { |a, ride| a << ride.driver if ride.passenger == self; a }
    end

    def total_distance
        #Returns the floating number that represents the total distance the passenger has travelled using the service
        distance = 0
        Ride.all.each { |ride| distance += ride.miles if ride.passenger == self }
        distance.truncate(2)
    end

    def self.premium_member
        #Returns an array of all Passengers who have travelled over 100 miles in total with the service
        @@all.select do |pass|
            total = 0
            total += pass.total_distance
            total > 100
        end.uniq
    end

    def self.all
        @@all
    end

end