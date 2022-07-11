require 'faker'

puts "Seeding users..."
User.create(username:"BeverageQueen", wallet: 41.50, member_points: 100)
User.create(username: Faker::Internet.username(specifier: 5..16), wallet: Faker::Number.decimal(l_digits: 2), member_points: Faker::Number.within(range: 10..100))
User.create(username: Faker::Internet.username(specifier: 5..16), wallet: Faker::Number.decimal(l_digits: 2), member_points: Faker::Number.within(range: 10..100))
User.create(username: Faker::Internet.username(specifier: 5..16), wallet: Faker::Number.decimal(l_digits: 2), member_points: Faker::Number.within(range: 10..100))
User.create(username: Faker::Internet.username(specifier: 5..16), wallet: Faker::Number.decimal(l_digits: 2), member_points: Faker::Number.within(range: 10..100))
puts "Seeding done!"


puts "Seeding drinks..."
Drink.create(user_id: Faker::Number.within(range: 1..5), size: "S", favorite: false)
Drink.create(user_id: Faker::Number.within(range: 1..5),size: "M", favorite: false)
Drink.create(user_id: Faker::Number.within(range: 1..5),size: "S", favorite: false)
Drink.create(user_id: Faker::Number.within(range: 1..5),size: "L", favorite: false)
Drink.create(user_id: Faker::Number.within(range: 1..5),size: "L", favorite: false)
Drink.create(user_id: Faker::Number.within(range: 1..5),size: "M", favorite: false)
puts "Seeding done!"


puts "Seeding ingredients..."
Ingredient.create(name: "Coffee", category: "Base", cost: 3.00, points: 10)
Ingredient.create(name: "Tea", category: "Base", cost: 3.00, points: 10)
Ingredient.create(name: "Iced Coffee", category: "Base", cost: 4.00, points: 10)
Ingredient.create(name: "Iced Tea", category: "Base", cost: 4.00, points: 10)

Ingredient.create(name: "Milk", category: "Creamer", cost: 0.00, points: 0)
Ingredient.create(name: "Oat Milk", category: "Creamer", cost: 0.50, points: 1)
Ingredient.create(name: "No Creamer", category: "Creamer", cost: 0.00, points: 0)

Ingredient.create(name: "Sugar", category: "Sweetner", cost: 0.00, points: 0)
Ingredient.create(name: "Honey", category: "Sweetner", cost: 0.00, points: 0)
Ingredient.create(name: "No Sweetner", category: "Sweetner", cost: 0.00, points: 0)

Ingredient.create(name: "Chocolate", category: "Flavor", cost: 0.50, points: 1)
Ingredient.create(name: "Raspberry", category: "Flavor", cost: 0.50, points: 1)
Ingredient.create(name: "Caramel", category: "Flavor", cost: 0.50, points: 1)
Ingredient.create(name: "No Added Flavor", category: "Flavor", cost: 0.00, points: 0)

puts "Seeding done!"


puts "Seeding customizations..."
Customization.create(drink_id: 1, ingredient_id: 1)
Customization.create(drink_id: 1, ingredient_id: 5)
Customization.create(drink_id: 1, ingredient_id: 8)
Customization.create(drink_id: 1, ingredient_id: 11)

Customization.create(drink_id: 2, ingredient_id: 4)
Customization.create(drink_id: 2, ingredient_id: 7)
Customization.create(drink_id: 2, ingredient_id: 9)
Customization.create(drink_id: 2, ingredient_id: 12)
puts "Seeding done!"