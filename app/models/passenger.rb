class Passenger
    
    @@all = []
    def self.all
        @@all;
    end

    def self.premium_members
        self.all.filter{|p| p.total_distance > 100};
    end

    attr_reader :name;

    def initialize(name)
        @all = name;
        self.class.all << self;
    end

    def rides
        Ride.all.filter {|r| r.Passenger == self};
    end


    def drivers
        self.rides.map {|r| r.driver} 
    end

    def total_distance
        self.rides.map{|r| r.distance}.reduce(0){|sum, dist| sum + dist}
    end

end

# name works thru the reader

# rides filter j table looks for self as ref in Rides.all

# drivers calls rides and  maps

# total distance call rides and map distances plus reduco

# self.all -checko

# self.prem - filter Pass.all and ask if total dist > 100