
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

    # def self.total_distance
    #     self.all.sum do |ride|
    #         ride.distance
    #     end
    # end

    def self.average_distance
        # sum = Ride.all.map{|ride| ride.distance}
        # sum.sum / sum.length

        # self.total_distance/self.all.count
        all.reduce(0) {|sum, ride| sum + (ride.distance/all.length)}
    end

end