
class Passenger
    attr_reader :name 
    @@all = []

    def initialize(name) #expects a string argument
        @name = name
        @@all << self
    end 

    ##class methods

    def self.all
        @@all
    end 

    def self.premium_members
        Passenger.all.filter { |passenger| passenger.total_distance > 100 }
    end 

    ##instance methods

    def rides
        Ride.all.filter { |ride| ride.passenger == self }
    end 

    def drivers
        self.rides.map { |ride| ride.driver}
    end 

    def total_distance
        self.rides.map { |ride| ride.distance }.reduce { |sum, n| sum + n}
    end 

end 