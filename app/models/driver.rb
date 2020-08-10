class Driver

    attr_accessor :name

    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def passenger_names
        passengers = []
        Ride.all.filter do |ride_info|
            if ride_info.driver == self
                passengers << ride_info.passenger
            end
        end
        passengers.uniq
    end

    def rides
        Ride.all.filter do |ride_info|
            ride_info.driver == self
        end
    end

    def self.all
        @@all
    end

    def self.mileage_cap(distance)
        mileage_array = []
        Ride.all.filter do |ride_info|
           if ride_info.distance > distance
            mileage_array << ride_info.driver
           end
        end
        mileage_array
    end

    
    
    
end
