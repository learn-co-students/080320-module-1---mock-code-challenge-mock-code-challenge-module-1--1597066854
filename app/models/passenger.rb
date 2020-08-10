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
    Ride.all.select do |ride|
      ride.passenger == self
    end
  end

  ##supposed to be unique?##
  def drivers
    self.rides.map do |ride|
      ride.driver
    end.uniq
  end

  def total_distance
    all_rides = self.rides.map do |ride|
      ride.distance
    end.sum
  end

  ##need to get the total distance for each person first

end

# #### Passenger



# - `Passenger.premium_members`
#   - Returns an array of all Passengers who have travelled over 100 miles in total with the service





# - `Passenger#total_distance`
#   - Returns the floating number that represents the total distance the passenger has travelled using the service
# - `Passenger#name`
#   - Returns the name of the passenger
# - `Passenger#rides`
#   - Returns an array of Ride instances that this person has been on
# A Passenger should be initialized with a name as a string. After the Passenger has been initialized, it shouldn't be changed.

# - `Passenger.all`
#   - Returns an array of all Passengers
# - `Passenger#drivers`
#   - Returns an array of Driver instances that this person has rode with