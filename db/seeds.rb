# Fake categories
Category.create!(name: "Foods")
Category.create!(name: "Drinks")

10.times  do |n|
  name = Faker::Coffee.unique.origin
  parent_id = 2
  Category.create!(name: name, parent_id: parent_id)
end

10.times  do |n|
  name = Faker::Food.unique.dish
  parent_id = 1
  Category.create!(name: name, parent_id: parent_id)
end

# Fake products
50.times do |n|
  name = Faker::Food.unique.fruits
  price = rand(20..60)
  quantity = rand(1..10)
  detail = Faker::Food.description
  rate_average = rand(1..5)
  category_id = rand(3..22)
  Product.create!(
    name: name,
    price: price,
    quantity: quantity,
    detail: detail,
    rate_average: rate_average,
    category_id: category_id
  )
end

User.create!(
  name: "admin",
  email: "admin@gmail.com",
  password: "123123"
)
