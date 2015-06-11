class BookingsController < ApplicationController
  def new
    @booking = Booking.new
    @passenger = Passenger.new
    @number_of_passengers = params[:passengers].to_i || 0
    @number_of_passengers.times do 
      @booking.passengers.build
    end
    @flight = Flight.find(params[:flight])
  end

  def create
    if @booking = Booking.create(booking_params)
      @booking.passengers.each do |passenger|
        PassengerMailer.flight_booked(passenger, @booking.flight).deliver_later
      end
    end
  end

  private
    def booking_params
      params.require(:booking).permit(:flight_id,
        passengers_attributes: [:name, :email]
        )
    end
end
