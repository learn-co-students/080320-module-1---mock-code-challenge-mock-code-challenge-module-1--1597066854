
class Driver
    attr_accessor :name
    @@all = []

    def initialize (name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def rides
        Ride.all.select do |trip|
            trip.driver == self
        end 
    end
    
    def passenger_names
        self.rides.select do |trip|
            trip.passenger
    end.uniq
end

#     def self.mileage_cap(distance)
#         rides.select do |travel|
#         if travel.select > driver(distance)
#         end
#     end
# end
end