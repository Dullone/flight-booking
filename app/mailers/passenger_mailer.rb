class PassengerMailer < ApplicationMailer
  default from: 'airline@example.com'

  def flight_booked(user, flight)
    @user = user
    @flight = flight
    mail(to: @user.email, subject: 'Thank you for booking a flight!')
  end
end
