# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

10.times do
users = User.create(
    email: Faker::Internet.email,
    password: Faker::Name.first_name,
    cart_id: Faker::Number.between(1, 10))
end

5.times do |i|
item = Item.create(title: "cat #{i+1}",
  description: Faker::Cat.breed,
  price: 25,
  image_url: "chat#{i+1}.png")
end

5.times do |j|
order = Order.create(item_id: Faker::Number.between(1, 10),
    user_id: Faker::Number.between(1, 10))
end

5.times do |j|
cart = Cart.create(item_id: Faker::Number.between(1, 10))
end
