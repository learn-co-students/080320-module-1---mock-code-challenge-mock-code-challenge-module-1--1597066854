class Driver
  attr_accessor :name

  @@all = []

  def initiazlie(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

end

# #### Driver
# A Driver should be initialized with a name as a string.
# - `Driver#name`
#   - Returns the driver's name
# - `Driver#passenger_names`
#   - Returns an array of all Passengers' names a driver has driven. The names should be **unique** (no repeats).
# - `Driver#rides`
#   - Returns an array of all Rides a driver has made
# - `Driver.all`
#   - Returns an array of all Drivers
# - `Driver.mileage_cap(distance)`
#   - Takes an argument of a distance (float) and returns an array of all Drivers who have driven over the mileage