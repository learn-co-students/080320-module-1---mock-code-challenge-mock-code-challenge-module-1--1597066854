class Passenger
    
    @@all = []
    def self.all
        @@all;
    end

    attr_reader :name;

    def initialize(name)
        @all = name;
        self.class.all << self;
    end


end

# name works thru the reader