# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts 'Cleaning database...'
Restaurant.destroy_all

puts 'Creating restaurants...'
restaurants_attributes = [
  {
    name:         'Dishoom',
    address:      '7 Boundary St, London E2 7JE',
    description:  'Buzzy destination for Indian street food in Bombay-style vintage decor.',
    stars:        3,
    chef:         "Jamie Oliver"
  },
  {
    name:         'Pizza East',
    address:      '56A Shoreditch High St, London E1 6PQ',
    description:  'Pizzeria with industrial looks, serving rustic pizza and antipasti.',
    stars:        2,
    chef:          "Gordon Ramsey"
  }, 
  {
    name:         'Le pré Catelan',
    address:      'route de Suresnes 75016 Paris',
    description:  'Oeil vif, geste sur: impossible de distinguer',
    stars:        3,
    chef:          "Alain Ducasse"
  }
]
Restaurant.create!(restaurants_attributes)
puts 'Finished!'