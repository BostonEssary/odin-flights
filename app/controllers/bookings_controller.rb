class BookingsController < ApplicationController

    def new
        @flight = Flight.find_sole_by(id: params[:flight])
        @num_of_passengers = params[:num_of_passengers]
        @booking = Booking.new
        @num_of_passengers.to_i.times {@booking.passengers.build}
    end

    def create
        @booking = Booking.new(booking_params)
        if @booking.save
            redirect_to @booking
        else
            render :new, status: :unprocessable_entity
        end
    end

    def show
        @booking = Booking.find(params[:id])
    end


    private
    
    def booking_params
        params.require(:booking).permit(:flight_id, passengers_attributes: [:name, :email])
    end
    
end
