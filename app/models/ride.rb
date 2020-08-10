class Ride

    attr_accessor :driver, :passenger, :distance

    @@all = []
    
    def initialize(driver, passenger, distance)
        @driver = driver
        @passenger = passenger
        @distance = distance
        @@all << self
    end

    def self.all
        @@all
    end

    def self.average_distance
        distances = []
        self.all.map do |ride|
            distances << ride.distance
        end
        distances.inject do |sum, distance| sum + distance end.to_f / distances.size
    end



end
