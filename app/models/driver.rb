
class Driver

    attr_reader :name

    @@all = []
    def initialize(name)
        @name = name
        @@all << self
    end 

    ##class methods

    def self.all
      @@all
    end 

    def self.mileage_cap(distance)
        Driver.all.filter { |driver| driver.total_distance > distance }
    end 

    ##instance methods

    def total_distance
        self.rides.map {|ride| ride.distance }.reduce {|sum, n| sum + n }.round(2)
    end 

    def passenger_names
       self.rides.map {|ride| ride.passenger.name}.uniq
    end 

    def rides
        Ride.all.filter { |ride| ride.driver == self}
    end 

end 