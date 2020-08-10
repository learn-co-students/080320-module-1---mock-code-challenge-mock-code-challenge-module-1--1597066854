
class Passenger


attr_reader :name

@@all=[]

def initialize (name)
    @name=name
    @@all << self
end

def rides
    Ride.all.select do |ride|
        ride.passenger == self
    end
end


def drivers
    rides.map do |ride|
        ride.driver 
    end
end

def total_distance
    rides.sum do |ride|
        ride.miles.to_f
    end
end


def self.all
    @@all
end






end
