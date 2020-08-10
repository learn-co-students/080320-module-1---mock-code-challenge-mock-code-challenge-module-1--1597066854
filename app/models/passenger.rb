class Passenger
    attr_reader :name
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
            trip.passenger == self
        end 
    end

    def drivers
        self.rides.select do |trip|
            trip.driver
        end
    end
    # def self.premium_members
    #     rides.select do |d|
    #          d == driver.distance > 100
    #     end
    # end

end