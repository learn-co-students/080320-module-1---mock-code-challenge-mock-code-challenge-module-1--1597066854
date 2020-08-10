
class Driver

attr_accessor :name

@@all = []


def initialize (name)
    @name = name
    @@all << self
end

def rides
    Ride.all.select do |ride|
    ride.driver == self
    end
end

# def passenger_names
#     rides.map do |ride|
#         ride.passenger.name
#     end

# end


def self.mileage_cap (distance)
    Ride.all.map do |ride|
        if ride.distance > distance
            ride.driver
        end
    end
end



def self.all
    @@all
end






end
