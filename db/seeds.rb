# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.create(email: 'randy@thecat.com', password: 'pdx123pdx456pdx789', admin: true)

Tag.create(name: 'Fun')
Tag.create(name: 'Awesome')
Tag.create(name: 'Animals')
Tag.create(name: 'People')
Tag.create(name: 'Friends')
Tag.create(name: 'Familly')
