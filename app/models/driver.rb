class Driver
    
    @@all = [];
    def self.all
        @@all;
    end

    def self.milage_cap(distance)
        self.all.select{|d| d.total_distance > distance}
    end

    attr_accessor :name;
    def initialize(name)
        @name = name;

        self.class.all.push(self);
    end

    def rides
        Ride.all.filter{|r| r.driver == self}
    end

    def passenger_names
        self.rides.map{|r| r.passenger.name}
    end
    
    def total_distance
        self.rides.map{|r| r.distance}.reduce(0){|sum, r| sum + r}
    end
end

# name works thru accessor
# rides ask rides for self ref with filter
# passenger_names call self.rides and then map to r.passenger.name
# works thru class var/method self.all
# Driver.milage - make function distance that returns drivers total distance by maping and reducibng from
# self.rides...then u can just filter thru Driver.all by askings if d.distance > arg