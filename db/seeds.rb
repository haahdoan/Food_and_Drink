# Fake categories
Category.create!(name: "Foods")
Category.create!(name: "Drinks")

Category.create!(name: "Milk", parent_id:2)
Category.create!(name: "Wine", parent_id: 2)
Category.create!(name: "coffee", parent_id: 2)
Category.create!(name: "Water", parent_id: 2)
Category.create!(name: "Juice", parent_id: 2)
Category.create!(name: "Smoothie", parent_id: 2)

Category.create!(name: "Fried", parent_id: 1)
Category.create!(name: "Fast", parent_id: 1)

# Fake products
Product.create!(
  name: "Milk coffee",
  price: 30000,
  quantity: 30,
  detail: "Milk coffee",
  rate_average: 0,
  category_id: 5)
Product.create!(
  name: "Mineral water",
  price: 5000,
  quantity: 1000,
  detail: "Mineral water",
  rate_average: 0,
  category_id: 6)
Product.create!(
  name: "Soft drink",
  price: 30000,
  quantity: 150,
  detail: "Soft drink",
  rate_average: 0,
  category_id: 6)
Product.create!(
  name: "Orange juice",
  price: 20000,
  quantity: 50,
  detail: "Orange juice",
  rate_average: 0,
  category_id: 7)
Product.create!(
  name: "Pineapple juice",
  price: 30000,
  quantity: 20,
  detail: "Pineapple juice",
  rate_average: 0,
  category_id: 7)
Product.create!(
  name: "Tomato juice",
  price: 15000,
  quantity: 80,
  detail: "Tomato juice",
  rate_average: 0,
  category_id: 7)
Product.create!(
  name: "Avocado smoothie",
  price: 40000,
  quantity: 120,
  detail: "Avocado smoothie",
  rate_average: 0,
  category_id: 8)
Product.create!(
  name: "Strawberry smoothie",
  price: 40000,
  quantity: 30,
  detail: "Strawberry smoothie",
  rate_average: 0,
  category_id: 8)
Product.create!(
  name: "Tomato smoothie",
  price: 25000,
  quantity: 10,
  detail: "Tomato smoothie",
  rate_average: 0,
  category_id: 8)
Product.create!(
  name: "Fresh milk",
  price: 8000,
  quantity: 300,
  detail: "Fresh milk",
  rate_average: 0,
  category_id: 3)
Product.create!(
  name: "Lemonade",
  price: 10000,
  quantity: 170,
  detail: "Lemonade",
  rate_average: 0,
  category_id: 6)
Product.create!(
  name: "Cola",
  price: 15000,
  quantity: 30,
  detail: "Cola",
  rate_average: 0,
  category_id: 6)
Product.create!(
  name: "Bubble milk tea",
  price: 35000,
  quantity: 90,
  detail: "Bubble milk tea",
  rate_average: 0,
  category_id: 3)
Product.create!(
  name: "Iced tea",
  price: 5000,
  quantity: 500,
  detail: "Iced tea",
  rate_average: 0,
  category_id: 6)
Product.create!(
  name: "Hot chocolate",
  price: 55000,
  quantity: 15,
  detail: "Hot chocolate",
  rate_average: 0,
  category_id: 10)
Product.create!(
  name: "Black coffee",
  price: 45000,
  quantity: 55,
  detail: "Black coffe",
  rate_average: 0,
  category_id: 5)
Product.create!(
  name: "Ice cream",
  price: 15000,
  quantity: 250,
  detail: "Ice cream",
  rate_average: 0,
  category_id: 6)
Product.create!(
  name: "Red wine",
  price: 20000,
  quantity: 45,
  detail: "Red wine",
  rate_average: 0,
  category_id: 4)
Product.create!(
  name: "Vodka",
  price: 400000,
  quantity: 20,
  detail: "Vodka",
  rate_average: 0,
  category_id: 4)
Product.create!(
  name: "White wine",
  price: 320000,
  quantity: 30,
  detail: "White wine",
  rate_average: 0,
  category_id: 4)
Product.create!(
  name: "Sandwich",
  price: 25000,
  quantity: 35,
  detail: "Sandwich",
  rate_average: 0,
  category_id: 7)
Product.create!(
  name: "French fries",
  price: 30000,
  quantity: 220,
  detail: "French fries",
  rate_average: 0,
  category_id: 9)
Product.create!(
  name: "Fried chicken",
  price: 200000,
  quantity: 20,
  detail: "Fried chicken",
  rate_average: 0,
  category_id: 9)
Product.create!(
  name: "Hamburger",
  price: 50000,
  quantity: 100,
  detail: "Hamburger",
  rate_average: 0,
  category_id: 10)
Product.create!(
  name: "Hot dog",
  price: 10000,
  quantity: 200,
  detail: "Hot dog",
  rate_average: 0,
  category_id: 10)

User.create!(
  name: "admin",
  email: "admin@gmail.com",
  admin: true,
  address: "Ca Mau",
  password: "123123"
)

User.create!(
  name: "Tung",
  email: "tung@gmail.com",
  address: "Phu Tho",
  password: "123123"
)

User.create!(
  name: "Hanh",
  email: "hanh@gmail.com",
  address: "Bac Ninh",
  password: "123123"
)
