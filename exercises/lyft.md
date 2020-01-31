# Level: Easy

## Deliverables

You are building an app for a Lyft/Uber competitor

- your models are passengers, drivers, rides
  - a passenger has many rides
  - a driver has many rides
  - a ride belongs to a passenger and a driver
    - a ride is initialized with a distance (as a float)

Write out the relationships using has_many, belongs_to and has_many_through.
Create the necessary methods to connect these classes.

#### Passenger

X #drivers
  - returns all drivers a passenger has ridden with
X #rides
  - returns all rides a passenger has been on
X .all
  - returns an array of all passengers
X #total_distance
  - should calculate the total distance the passenger has travelled with the
    service
X .premium_members
  - should find all passengers who have travelled over 100 miles with the service

#### Driver

X #passengers
  - returns all passengers a driver has had
X #rides
  - returns all rides a driver has made
X .all
  - returns an array of all drivers
X .mileage_cap(distance)
  - takes an argument of a distance (float) and returns all drivers who have exceeded that mileage

#### Ride

X #passenger
  - returns the passenger object for that ride
X #driver
  - returns the driver object for that ride
x .average_distance
  - should find the average distance of all rides
