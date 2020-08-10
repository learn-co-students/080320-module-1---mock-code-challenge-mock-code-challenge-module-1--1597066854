class Ride
    attr_accessor :driver, :passenger, :miles
    @@all = []

    def initialize(driver, passenger, miles)
        @driver = driver
        @passenger = passenger
        @miles = miles
        @@all << self
    end

    def passenger
        @passenger
    end

    def driver
        @driver
    end

    def distance
        @miles
    end

    def self.all
        @@all
    end

    def self.average_distance
        #Returns the average distance across ALL rides
        avg = 0
        @@all.each { |ride| avg += ride.miles}
        avg / @@all.length
    end

end