class Ride

attr_accessor :passenger, :driver

@@all=[]

def initialize (passenger, driver)
    @passenger = passenger
    @driver = driver
    @@all << self
end





def self.all
    @@all
end



end

