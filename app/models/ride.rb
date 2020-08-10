class Ride

    attr_accesor :passenger, :driver, :distance, :average_distance
    @@all

    def initialize(passenger)
        @passenger = passenger
    end

    def initialize(driver)
        @driver = driver
    end

    def initialize(distance)
        @distance = distance
    end

    def initialize(average_distance)
        @average_distance = average_distance
        self.average_distance
    end
end

ride.average_distance << :driver
p ride.average_distance

