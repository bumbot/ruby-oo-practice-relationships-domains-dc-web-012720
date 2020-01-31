require 'pry'

class Listing
    attr_reader :city

    @@all = []
    def initialize(city)
        @city = city

        @@all << self
    end

    def self.all
        @@all
    end

    def guests
        Trip.all.find_all do |yeet| 
            yeet.listing == self
        end.map do |yeet| yeet.guest
        end
    end

    def trips
        Trip.all.find_all do |yeet|
            yeet.listing == self
        end
    end

    def trip_count
        self.trips.count
    end

    def self.find_all_by_city(city)
        Listing.all.select do |yeet|
            yeet.city == city
        end
    end

    def self.most_popular
        arr = Listing.all.map do |yeet|
            yeet.city
        end

        hash = Hash.new(0)
        arr.each do |yeet|
            hash[yeet] += 1
        end
        hash.max_by{|k,v| v}[0]
    end
end