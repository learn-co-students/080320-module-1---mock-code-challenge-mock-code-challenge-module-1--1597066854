class Driver
    
    attr_accesor :passenger_names, :rides, :mileage_cap
    attr_reader :name
    @@all

    def initialize(name)
        @name = name
    end

    def initialize(passenger_name)
        @passenger_names = passenger_names
    end

    def initialize(rides)
        @rides = rides
    end

    def initialize 
        @driver []
    end
    
    def array
        @@driver
    end

    def initialize
        @mileage_cap.push += 100
    end
end



