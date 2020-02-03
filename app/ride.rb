class Ride
    attr_reader :distance, :passenger, :driver

    @@all = []
    def initialize(distance, passenger, driver)
        @distance = distance.to_f
        @passenger = passenger
        @driver = driver

        @@all << self
    end

    def self.average_distance
        average = 0

        self.all.each {|ride| average += ride.distance}
        (average / self.all.length).round(2)
    end

    def self.all
        @@all
    end
end