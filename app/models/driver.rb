
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
    #def passenger_names
     #   array =[]
     #   Ride.all.collect do |ride|
      #      if ride.passenger == self
      #          array << ride.passenger
      #      end
     #   end
     #   array
    #end
    
end