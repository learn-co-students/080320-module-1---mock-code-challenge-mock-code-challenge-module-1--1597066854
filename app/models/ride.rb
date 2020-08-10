class Ride

    attr_accessor :passenger, :driver, :distance

    @@all = Array.new

    def initialize(passenger, driver, distance)
        @driver = driver
        @passenger = passenger
        @distance = distance
        @@all.push(self)
    end

    def self.all
        @@all
    end

    # def self.average_distance
    #     self.all.map do |v|
    #         v.distance
    #     end
    # end
end
