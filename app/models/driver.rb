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
    Ride.all.select do |ride|
      ride.driver == self
    end
  end

  def passenger_names
    self.rides.map do |ride|
      ride.passenger.name
    end.uniq
  end

  def total_distance_driven
    self.rides.map do |ride|
      ride.distance
    end.sum
  end

  def self.mileage_cap(distance)
    Driver.all.select do |driver|
      driver.total_distance_driven > distance
    end
  end

end

# #### Driver




# - `Driver.mileage_cap(distance)`
#   - Takes an argument of a distance (float) and returns an array of all Drivers who have driven over the mileage


# A Driver should be initialized with a name as a string.
# - `Driver#name`
#   - Returns the driver's name
# - `Driver#rides`
#   - Returns an array of all Rides a driver has made
# - `Driver.all`
#   - Returns an array of all Drivers
# - `Driver#passenger_names`
#   - Returns an array of all Passengers' names a driver has driven. The names should be **unique** (no repeats).