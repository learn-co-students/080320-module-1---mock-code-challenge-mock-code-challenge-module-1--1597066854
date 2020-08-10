
class Driver
    attr_accessor :name

    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def rides
        Ride.all.filter{|ride| ride.driver == self}
    end

    def passenger_names
        rides.map{|ride| ride.passenger.name}.uniq
    end

    def total_distance_driven
        rides.reduce(0) {|total, ride| total + ride.distance}
    end

    def self.mileage_cap(distance)
        # all.filter do |driver| 
        #     driver.total_distance_driven > distance
        # end
        
        all.select{|driver| driver.total_distance_driven > distance}

        # Ride.all.select do |ride|
        #     if ride.distance > distance
        #         ride.driver
        #     end
        # end
    end

end