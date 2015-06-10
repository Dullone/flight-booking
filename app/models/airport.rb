class Airport < ActiveRecord::Base
  has_many :departing_flights, class_name: "Flight",
                              foreign_key: "start"
  has_many :arraving_flights, class_name:  "Flight",
                              foreign_key: "finish"
end
