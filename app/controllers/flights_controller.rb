class FlightsController < ApplicationController

    def index
        @departure_airports = Flight.all.map{ |f| [ f.departure_airport.code, f.departure_airport.id ]}
        @arrival_airports = Flight.all.map{ |f| [ f.arrival_airport.code, f.arrival_airport.id ]}
        
        @date = params[:takeoff]

        @flights = Flight.where({arrival_airport: params[:arrival_airport], departure_airport: params[:departure_airport], takeoff: params[:takeoff]})
    end


    private

    def flight_params
        params.require(:flight).permit(:arrival_airport, :departure_airport, :takeoff)
    end
    
end
