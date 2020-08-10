
class Driver
    attr_reader :drivername
    @@all = []
    def initialize(drivername)
        @drivername = drivername
        @@all << self
    end
    def self.all
        @@all
    end
     
    
end