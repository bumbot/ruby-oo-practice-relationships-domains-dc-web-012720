require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

dc_hotel = Listing.new("DC")
dc_apartment = Listing.new("DC")
nyc = Listing.new("New York")

guest1 = Guest.new("Paul")
guest2 = Guest.new("Matteo")
guest3 = Guest.new("Ann")
guest4 = Guest.new("Joe")
guest5 = Guest.new("Joe")

trip1 = Trip.new(dc_hotel, guest1)
trip2 = Trip.new(nyc, guest2)
trip3 = Trip.new(nyc, guest3)
trip4 = Trip.new(dc_apartment, guest4)
trip5 = Trip.new(nyc, guest1)

p guest1.listings

p guest1.trips

p guest1.trip_count

p Guest.all

p Guest.pro_traveler

p Guest.find_all_by_name("Joe")


p Listing.all

p Listing.find_all_by_city("DC")

p Listing.most_popular




Pry.start


0
