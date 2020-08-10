class Passenger 
attr_reader :name
@@all = []

def initialize(name)
    @name = name
    @@all << self
end

def self.all
    @@all
end


def rides 
    Ride.all.select do |rides|
        rides.passenger == self
    end
end

def drivers
    rides.map do |rides|
        rides.driver
    end
end



end
