class Driver

    attr_accessor :name, :passenger_name, :rides

    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def passenger_names
        passengers = []
        Ride.all.filter do |ride, name|
            if ride.driver == self
                passengers << ride.passenger.name
            end
        end
        passengers.uniq
    end

    def rides
        Ride.all.filter do |ride|
            ride.driver == self
        end
    end

    def self.mileage_cap(distance)
        drivers = []
        self.all.filter do |driver|
        if driver.total_distance > distance
            drivers << driver
        end
    end
    drivers
    end


    def total_distance
        distances = []
        Ride.all.filter do |ride|
            if ride.driver == self
                distances << ride.distance 
            end
        end
        distances.sum.to_f
    end


end
