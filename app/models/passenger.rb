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
        Ride.all.select do |ride|
            ride.passenger == self
        end
    end

    def drivers
        Driver.all.select do |driver|
            driver.passenger == self
        end
    end

    def self.premium_members
        self.all.filter do |prem_pass|
            prem_pass.distance >= 100
        end
    end

    ##
    def total_distance
        self.distance = distance

    end
end
