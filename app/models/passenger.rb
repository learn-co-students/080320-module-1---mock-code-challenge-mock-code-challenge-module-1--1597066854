class Passenger

    attr_accesor :rides, :drivers, :total_distance
    attr_reader :name
    @@all

    def initialize(name)
        @name = name
    end

    def initialize(rides)
        @rides = rides
    end

    def initialize(drivers)
        @drivers = drivers
    end

    def initialize(total_distance)
        @total_distance = total_distance
    end

    def passenger
        []
    end

    def array
        @@passenger
    end

    def initialize 
        premium_members += 100
    end
end
