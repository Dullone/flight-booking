class CreateBookingsPassengers < ActiveRecord::Migration
  def change
    create_table :bookings_passengers, id: false do |t|
      t.belongs_to :passenger, index: true
      t.belongs_to :booking, index: true
    end
  end
end
