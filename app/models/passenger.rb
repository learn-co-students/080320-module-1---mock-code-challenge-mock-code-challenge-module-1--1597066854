require 'pry'

class Passenger 
    attr reader :name 
    attr accessor :rides, :drivers, :total_distance
    @@all = []

    def initialize(name, rides, drivers, total_distance)
        @name = "name"
        @rides = rides
        @drivers = drivers
        @total_distance = total_distance
        @@all << self 
    end 

    ## 1. Be sure that total distance has exceeded 100 miles
    ## 2. Iterate through and return this array (.map, self)


    def premium_members
        if total_distance > 100
            Passenger.map do |high_milage|
                high_milage << self
            end
        end
    end  

    def self.all
        @@all
    end

end 
