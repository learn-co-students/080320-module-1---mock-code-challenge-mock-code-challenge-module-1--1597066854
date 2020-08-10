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

  def self.average_distance
    rides = Ride.all.map do |ride|
      ride.distance
    end
    length = rides.length
    rides = rides.sum
    rides/length
  end
end
