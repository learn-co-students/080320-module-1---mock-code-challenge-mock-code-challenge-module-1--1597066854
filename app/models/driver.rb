
class Driver

    attr_reader :name

    @@all = []
    def initialize(name)
        @name = name
        @@all << self
    end 

    ##class methods

    def self.all
      @@all
    end 

    def self.mileage_cap(distance)

    end 

    ##instance methods

    def passenger_names
    
    end 

    def rides

    end 

end 