# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Rate.destroy_all
Rate.create(id:1,period:3,cost:25.00)
Rate.create(id:2,period:6,cost:65.00)
Rate.create(id:3,period:12,cost:85.00)
puts 'Rates seed completed'
