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
    @booking = Booking.create(booking_params)
  end

  private
    def booking_params
      params.require(:booking).permit(:flight_id,
        passengers_attributes: [:name, :email]
        )
    end
end
