class PassengerMailer < ApplicationMailer
    default from: 'notification@odin-chariot.com'

    def booking_email
        @passenger = params[:passenger]
        @booking = params[:booking]
        @flight = params[:flight]
        
        mail(to: @passenger.email, subject: "Booking Information")
    end
end
