
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

def passenger_names
    new_array =[]
    rides.each do|ride|
        new_array << ride.passenger.name
    end
    new_array.uniq
end



# def passenger_names
#     rides.map do |ride|
#         ride.passenger.name
#     end
# spent some time trying to get rides.map.uniq do to work on the second line there.. 
#but it kept returning ALL the info for that person instead of just the name so I 
#figured I'd go back to ole reliable on this one and not just iterate(map)
# end


def self.mileage_cap (distance)
    Ride.all.select do |ride|
        if ride.distance > distance
            ride.driver
        end
    end
end

#realized when double checking my work that it returns all the info on those people not just the name. 
#drat. dont want to go over time but I know its there!



def self.all
    @@all
end






end
