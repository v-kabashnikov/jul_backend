# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

order = Order.create(name:"Hi Order", company_address:"Oakland", pickup_point: "Tel-Aviv")
5.times do 
  Item.create(name: "item-#{rand(1...100)}", quantity: rand(1...10), order: order)
end