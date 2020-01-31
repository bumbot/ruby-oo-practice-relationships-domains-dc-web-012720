class Driver
    attr_reader :name

    @@all = []
    def initialize(name)
        @name = name


        @@all << self
    end

    def self.all
        @@all
    end

    def passengers
        self.rides.map{|ride| ride.passenger}
    end

    def rides
        Ride.all.select{|ride| ride.driver == self}
    end

    def self.mileage_cap(miles)
        Ride.all.select{|ride| ride.distance > miles}.map{|ride| ride.driver}.uniq
    end
end