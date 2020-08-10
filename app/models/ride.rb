class Ride

attr_accessor :passenger, :driver, :miles

@@all=[]

def initialize (passenger, driver, miles)
    @miles= miles
    @passenger = passenger
    @driver = driver
    @@all << self
end


def self.all
    @@all
end



end

