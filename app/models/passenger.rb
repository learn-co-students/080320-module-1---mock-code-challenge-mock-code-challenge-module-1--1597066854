



class Passenger
    attr_reader :passname
    @@all = []
    def initialize(passname)
        @passname = passname
        @@all << self
    end
    def self.all
        @@all
    end
  

end