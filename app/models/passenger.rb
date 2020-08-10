class Passenger

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
        Ride.all.select { |rides| rides.passenger == self }
    end

    def drivers
        rides.map { |rides| rides.driver }.uniq
    end

    def total_distance
        rides.sum { |rides| rides.distance }
    end

    def self.premium_members
        self.all.select { |ele|  ele.total_distance > 100 }
    end

end
