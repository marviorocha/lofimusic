# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


admin = User.create([{full_name: 'Admin', username: 'admin', email: 'admin@admin.com', role: 'admin', password: '12345678'}])
user = User.create([{full_name: 'User', username: 'user', email: 'user@user.com', role: 'user', password: '12345678'}])

puts "Total user created: #{User.count}"