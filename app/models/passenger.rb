class Passenger
    attr_reader :name

    @@all = []
    def initialize(name)
        @name = name

        @@all << self
    end

    def drivers
        self.rides.map{|ride| ride.driver}
    end

    def rides
        Ride.all.select{|ride| ride.passenger == self}
    end

    def total_distance
        total = 0
        self.rides.each{|ride| total += ride.distance}
        total
    end

    def self.all
        @@all
    end

    def self.premium_members
        arr = self.all.select{ |pass| pass.total_distance > 100.00}

        if arr.empty?
            puts "Sorry, no one is premium just yet!"
        end
        arr
    end

end