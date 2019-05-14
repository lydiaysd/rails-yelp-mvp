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
    phone_number: '02075555565',
    category:      'japanese'
  },
  {
    name:         'Pizza East',
    address:      '56A Shoreditch High St, London E1 6PQ',
    phone_number:  '0208777543423',
    category:      'italian'
  },
  {
   name:          'Fabrique',
    address:      '132 King Road, London E2 7JE',
    phone_number: '02075394832',
    category:      'chinese'
  },
  {
     name:         'Bagel',
    address:      '1 Shoreditch, London E2 7JE',
    phone_number: '02078387387',
    category:      'belgian'
},
{
     name:         'Burger King',
    address:      '4 Shoreditch, London E2 7JE',
    phone_number: '0207838756576',
    category:      'french'
}
]
Restaurant.create!(restaurants_attributes)
puts 'Finished!'
