class Driver
    
    @@all = [];
    def self.all
        @@all;
    end

    attr_accessor :name;
    def initialize(name)
        @name = name;

        self.class.all.push(self);
    end


end

# name works thru accessor
# rides ask rides for self ref with filter
# passenger_names call self.rides and then map to r.passenger.names
# works thru class var/method self.all
# Driver.milage - make function distance that returns drivers total distance by maping and reducibng from
# self.rides...then u can just filter thru Driver.all by askings if d.distance > arg