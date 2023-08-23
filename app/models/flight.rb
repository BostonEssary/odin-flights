class Flight < ApplicationRecord
    belongs_to :departure_airport, class_name: "Airport", inverse_of: :departing_flights
    belongs_to :arrival_airport, class_name: "Airport", inverse_of: :arriving_flights
    has_many :bookings 
    


     def takeoff_date_formatted
        takeoff.strftime("%m/%d/%Y")
     end

     def takeoff_time_formatted
          takeoff.strftime("%l:%M %P")
     end

     def duration_formatted
          "#{duration_in_minutes/60} hrs and #{duration_in_minutes%60} mins"
     end 
end
