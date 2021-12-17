# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

lectures_times_list = [
  ['A', '09:00'],
  ['A', '10:00'],
  ['A', '10:45'],
  ['A', '11:15'],
  ['A', '12:00'],
  ['A', '13:00'],
  ['A', '14:00'],
  ['A', '14:45'],
  ['A', '15:30'],
  ['A', '16:00'],
  ['A', '16:30'],
  ['A', '17:00'],
  ['B', '09:00'],
  ['B', '10:00'],
  ['B', '11:00'],
  ['B', '11:30'],
  ['B', '12:00'],
  ['B', '13:00'],
  ['B', '13:45'],
  ['B', '14:30'],
  ['B', '15:00'],
  ['B', '16:00'],
  ['B', '17:00']
]

lectures_times_list.each do |track, time|
  Lecture.create( track: track, time: time ) unless time == '12:00'
  Lecture.create( track: track, time: time, title: 'Almoço' ) if time == '12:00'
end
