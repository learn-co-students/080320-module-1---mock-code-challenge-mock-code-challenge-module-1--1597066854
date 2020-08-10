
class Passenger
    attr_reader :name 
    @@all = []

    def initialize(name) #expects a string argument
        @name = name
        @@all << self
    end 

    ##class methods

    def self.all
        @@all
    end 

    def premium_members
    
    end 

    ##instance methods

    def rides

    end 

    def drivers

    end 

    def total_distance

    end 

end 