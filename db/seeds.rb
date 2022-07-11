require 'faker'

puts "Seeding users..."

User.create(username:"BeverageQueen", wallet: 41.50, member_points: 100)
User.create(username: Faker::Internet.username(specifier: 5..16), wallet: Faker::Number.decimal(l_digits: 2), member_points: Faker::Number.within(range: 10..100))
User.create(username: Faker::Internet.username(specifier: 5..16), wallet: Faker::Number.decimal(l_digits: 2), member_points: Faker::Number.within(range: 10..100))
User.create(username: Faker::Internet.username(specifier: 5..16), wallet: Faker::Number.decimal(l_digits: 2), member_points: Faker::Number.within(range: 10..100))
User.create(username: Faker::Internet.username(specifier: 5..16), wallet: Faker::Number.decimal(l_digits: 2), member_points: Faker::Number.within(range: 10..100))

puts "Seeding done!"

puts "Seeding drinks..."

Drink.create(user_id: Faker::Number.within(range: 1..5), favorite: false)
Drink.create(user_id: Faker::Number.within(range: 1..5), favorite: false)
Drink.create(user_id: Faker::Number.within(range: 1..5), favorite: false)
Drink.create(user_id: Faker::Number.within(range: 1..5), favorite: false)
Drink.create(user_id: Faker::Number.within(range: 1..5), favorite: false)
Drink.create(user_id: Faker::Number.within(range: 1..5), favorite: false)

puts "Seeding done!"

puts "Seeding categories..."
puts "Seeding done!"

#need to be able to 
puts "Seeding ingredients..."
Ingredient.create(name: "Coffee" , drink_id: 1, category_id: , points: , cost: )
Ingredient.create(name: "Tea", drink_id:  category_id: , points: , cost: )
Ingredient.create(name: "Iced Coffee", drink_id: , category_id: , points: , cost: )
Ingredient.create(name: "Iced Tea", drink_id: , category_id: , points: , cost: )

Ingredient.create(name: "Milk", drink_id: Faker::Number.within(range: 1..6), category_id: , points: , cost: )
Ingredient.create(name: "Oat Milk", drink_id: Faker::Number.within(range: 1..6), category_id: , points: , cost: )

Ingredient.create(name: "Sugar", drink_id: Faker::Number.within(range: 1..6), category_id: , points: , cost: )
Ingredient.create(name: "Honey", drink_id: Faker::Number.within(range: 1..6), category_id: , points: , cost: )

Ingredient.create(name: "Chocolate", drink_id: Faker::Number.within(range: 1..6), category_id: , points: , cost: )
Ingredient.create(name: "Raspberry", drink_id: Faker::Number.within(range: 1..6), category_id: , points: , cost: )

puts "Seeding done!"


