class Flight < ApplicationRecord
    belongs_to :departure_airport, class_name: "Airport", inverse_of: :departing_flights
    belongs_to :arrival_airport, class_name: "Airport", inverse_of: :arriving_flights


   def self.get_takeoff_dates
        takeoffs = Flight.pluck(:takeoff)
   end

   def takeoff_date_formatted
        takeoff.strftime("%m/%d/%Y")
   end
end
