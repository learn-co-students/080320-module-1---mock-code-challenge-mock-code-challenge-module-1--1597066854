class Passenger

    attr_reader :name

    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def rides
        Ride.all.filter do |ride_info|
            if ride_info.passenger == self
                ride_info
            end
        end
    end

    def drivers
        Ride.all.filter do |ride_info|
            if ride_info.passenger == self
                ride_info.driver
            end
        end
    end

    def total_distance
        distance_array = []
        Ride.all.filter do |ride_info|
            if ride_info.passenger == self
                distance_array << ride_info.distance
            end
        end
        distance_array.inject(0){|sum,x| sum + x }
    end

    def self.all
        @@all
    end

    def self.premium_members
        premium_array = []
        Ride.all.filter do |ride_info|
            if ride_info.distance > 100
                premium_array << ride_info.passenger
            end
        end
        premium_array
    end


end
