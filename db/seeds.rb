# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.create(username: 'Waqar', email: 'waqarbaig85@gmail.com', password: 'Helloworld', password_confirmation: 'Helloworld')
User.create(username: 'Sulman', email: 'sulmanpersonal@gmail.com', password: 'Helloworld', password_confirmation: 'Helloworld')
User.create(username: 'Maria', email: 'mariah.hafeez@gmail.com', password: 'Helloworld', password_confirmation: 'Helloworld')
User.create(username: 'Umme Sulman', email: 'mrsbaig449@gmail.com', password: 'Helloworld', password_confirmation: 'Helloworld')
User.create(username: 'Usman', email: 'usmanbaig82@gmail.com', password: 'Helloworld', password_confirmation: 'Helloworld')
p "Seed users created."