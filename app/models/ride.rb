class Ride

    attr_accessor :driver, :passenger, :distance

    @@all = []

    def initialize(driver, passenger, distance)
        @driver = driver
        @passenger = passenger
        @distance = distance
        @@all << self
    end

    def self.average_distance
        distance_array = []
        self.all.filter do |ride_info|
            distance_array << ride_info.distance 
        end
        distance_array.inject { |sum, el| sum + el }.to_f / distance_array.size
    end
    
    def self.all
        @@all
    end


end