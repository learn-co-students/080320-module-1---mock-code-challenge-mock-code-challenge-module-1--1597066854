class Passenger

    attr_reader :name

    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def rides

    end

    def drivers

    end


end
