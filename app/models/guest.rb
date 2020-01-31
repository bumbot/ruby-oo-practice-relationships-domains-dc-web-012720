class Guest
    attr_reader :name, :place

    @@all = []
    def initialize(name)
        @name = name

        @@all << self
    end

    def self.all
        @@all
    end

    def listings
        Trip.all.find_all do |yeet| 
            yeet.guest == self
        end.map do |yeet| yeet.listing
        end
    end

    def trips
        Trip.all.find_all do |yeet|
            yeet.guest == self
        end
    end

    def trip_count
        self.trips.count
    end

    def self.pro_traveler
        Guest.all.select do |yeet|
            yeet.trip_count > 1
        end
    end

    def self.find_all_by_name(name)
        Guest.all.select do |yeet|
            yeet.name == name
        end
    end
    
end