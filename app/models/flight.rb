class Flight < ActiveRecord::Base
  belongs_to :arrival_airport, class_name: "Airport",
                               foreign_key: "finish"
  belongs_to :departure_airport, class_name: "Airport",
                                foreign_key: "start"
  has_many :bookings
end
