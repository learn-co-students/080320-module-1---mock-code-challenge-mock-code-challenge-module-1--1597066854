class Ride

attr_accessor :passenger, :driver, :distance

@@all=[]

def initialize (passenger, driver, distance)
    @distance=distance
    @passenger = passenger
    @driver = driver
    @@all << self
end


def self.total_distance
    self.all.sum do |ride|
        ride.distance
    end
end


def self.average_distance
self.total_distance / self.all.count
end



def self.all
    @@all
end



end

