class CreateFlights < ActiveRecord::Migration
  def change
    create_table :flights do |t|
      t.integer :start
      t.integer :finish
      t.date :date
      t.integer :duration

      t.timestamps null: false
    end
    add_index :flights, :start
    add_index :flights, :finish
  end
end
