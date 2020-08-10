require 'pry'

class Ride
    attr accessor :driver, :passenger, :distance
    @@all = []

def initialize(driver, passenger, distance)
    @driver = driver
    @passenger = passenger
    @distance = distance.to_f 
    @@all << self
end 

    ## To return the average distance across rides, we need to: 
    ## 1. Iterate through the array and collect distance values (.map)
    ## 2. Preform a calculation to attain an average (.sum)
    ## 3. Return new array to reflect averages (shovel into self)

    def average_distance
        Ride.map do |avg_miles|
            avg_miles.sum << self 
        end
    end 

    def self.all
        @@all
    end

end 
