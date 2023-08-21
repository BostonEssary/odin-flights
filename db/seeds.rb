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
    code: "PHX"
  },
  {
    code: "NYC"
  },
  {
    code: "SFO"
  }])
  
  p "Created #{Airport.count} Airports"

  Flight.create([
    {
      
      :takeoff => DateTime.strptime("09/01/2009 17:00", "%m/%d/%Y %H:%M"),
      :duration    => 3,
      :departure_airport_id => 1,
      :arrival_airport_id => 2
    },
    {
      
        :takeoff => DateTime.strptime("09/01/2009 17:00", "%m/%d/%Y %H:%M"),
        :duration    => 2,
        :departure_airport_id => 3,
        :arrival_airport_id => 1
      },
      {
      
        :takeoff => DateTime.strptime("09/01/2009 17:00", "%m/%d/%Y %H:%M"),
        :duration    => 1,
        :departure_airport_id => 2,
        :arrival_airport_id => 3
      },

    ])

    p "Created #{Flight.count} Flights"