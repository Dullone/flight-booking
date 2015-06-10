# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Airport.create(code: "SFO")
Airport.create(code: "NYC")

Flight.create(start: 1, finish: 2,
              date: 10.days.from_now,
              duration: 420)
Flight.create(start: 1, finish: 2,
              date: 5.days.from_now,
              duration: 390)
Flight.create(start: 1, finish: 2,
              date: 3.days.from_now,
              duration: 450)
Flight.create(start: 2, finish: 1,
              date: 10.days.from_now,
              duration: 300)
Flight.create(start: 2, finish: 1,
              date: 15.days.from_now,
              duration: 330)