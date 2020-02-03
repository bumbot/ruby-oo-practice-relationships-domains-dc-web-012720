require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

#
#
#  AirBnB test cases
#
#

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



#
#
# Lyft test cases
#
#

pass1 = Passenger.new("Paul")
pass2 = Passenger.new("Joseph")
pass3 = Passenger.new("Jenny")
pass4 = Passenger.new("Ann")

driver1 = Driver.new("Matteo")
driver2 = Driver.new("Ryan")
driver3 = Driver.new("Sonata")

ride1 = Ride.new(26.2, pass1, driver1)
ride2 = Ride.new(18.5, pass2, driver3)
ride3 = Ride.new(13.8, pass3, driver2)
ride4 = Ride.new(12.0, pass4, driver3)
ride5 = Ride.new(90.5, pass2, driver1)



binding.pry


0
