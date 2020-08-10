
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
        ride.distance.to_f
    end
end

def self.premium_members
    #go through each passenger. get their total distance. the ones that meet the min get approved
    self.all.select do |passenger|
        passenger.total_distance > 100.to_f
    end
end



def self.all
    @@all
end






end
