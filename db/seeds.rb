# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
Airport.destroy_all
Flight.destroy_all

Airport.create!([{
    code: "PHX",
    name: "Phoenix Sky Harbor International Airport",
    city: "Phoenix"
  },
  {
    code: "JFK",
    name: "John F. Kennedy International Airport",
    city: "New York"
  },
  {
    code: "SFO",
    name: "San Francisco International Airport",
    city: "San Francisco"
  },
  {
    code: "DEN",
    name: "Denver International Airport",
    city: "Denver"
  },
  {
    code: "MIA",
    name: "Miami International Airport",
    city: "Miami"

  },
  {
    code: "ATL",
    name: "Hartsfield-Jackson Atlanta Internatinal Airport",
    city: "Atlanta"

  }])
  
  p "Created #{Airport.count} Airports"

Flight.create!([
    {
      
      :takeoff => DateTime.strptime("12/13/2023 17:55", "%m/%d/%Y %H:%M"),
      :duration_in_minutes    => 3,
      :departure_airport_id => 1,
      :arrival_airport_id => 2
    },
    {
      
        :takeoff => DateTime.strptime("11/22/2023 07:35", "%m/%d/%Y %H:%M"),
        :duration_in_minutes    => 2,
        :departure_airport_id => 2,
        :arrival_airport_id => 1
      },
      {
      
        :takeoff => DateTime.strptime("09/01/2009 17:00", "%m/%d/%Y %H:%M"),
        :duration_in_minutes    => 1,
        :departure_airport_id => 3,
        :arrival_airport_id => 1
      }

    ])

    p "Created #{Flight.count} Flights"