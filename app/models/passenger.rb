class Passenger
    attr_reader :name

    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def rides
        # Ride.all.select do |ride|
        #     ride.passenger == self
        # end
        Ride.all.select{|ride| ride.passenger == self}
    end

    def drivers
        # rides.map do |ride|
        #     ride.driver
        # end.uniq
        self.rides.map{|ride| ride.driver}.uniq
    end

    def total_distance
        # self.rides.map do |ride|
        #     ride.distance
        # end.sum

        # rides.sum(0.0) do |ride|
        #     ride.distance
        # end

        # total = 0.0
        # self.rides.each do |ride|
        #     total += ride.distance
        # end
        # total

        # rides.sum do |ride|
        #     ride.distance.to_f
        # end

        rides.reduce(0){|sum, ride| sum + ride.distance}
    end

    def self.premium_members
        # @@all.select do |pass| 
        #     total = 0 
        #     total += pass.total_distance
        #     total > 100
        # end.uniq
        
        self.all.select{|passenger| passenger.total_distance > 100}
    end



end