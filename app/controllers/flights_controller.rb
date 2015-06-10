class FlightsController < ApplicationController
  def index
    @matching_flights = Flight.where(flight_params)
    @flights = Flight.all
    @dates = Flight.select(:date).distinct.collect { |f| [f.date] }
    @airports = Airport.all.collect { |a| [a.code, a.id] }
  end

  def flight_params
    params.permit(:start, :finish, :date)
  end

end
