class Driver

    attr_accessor :name

    @@all = Array.new

    def initialize(name)
        @name = name
        @@all.push(self)
    end

    def self.all
        @@all
    end
        
    def rides
        Ride.all.select do |e|
            e.driver == self
        end
    end

    # def self.mileage_cap_distance(cap)
    #     self.rides.map do |e|
    #         e.distance > cap
    #     end
    # end
end
