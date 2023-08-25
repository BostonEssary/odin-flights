class BookingsController < ApplicationController

    def new
        @flight = Flight.find_sole_by(id: params[:flight])
        @num_of_passengers = params[:num_of_passengers]
        @booking = Booking.new
        @num_of_passengers.to_i.times {@booking.passengers.build}
    end

    def create
        @booking = Booking.new(booking_params)
        @passengers = @booking.passengers
        if @booking.save
            
            @passengers.each do |passenger| 
                PassengerMailer.with(passenger: passenger, booking: @booking ).booking_email.deliver_later
            end

            redirect_to @booking
        else
            render :new, status: :unprocessable_entity
        end
    end

    def show
        @booking = Booking.find(params[:id])
        @flight = @booking.flight
    end


    private
    
    def booking_params
        params.require(:booking).permit(:flight_id, passengers_attributes: [:name, :email])
    end
    
end
