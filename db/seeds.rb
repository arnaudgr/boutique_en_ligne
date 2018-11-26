# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

users = User.create(name: "Arnaud", email: "email@email.com", login: "Arnaud")

5.times do |i|

item = Item.create(title: "cat #{i+1}", description: Faker::Cat.breed, price: 25, image_url: "chat#{i+1}.png")
end