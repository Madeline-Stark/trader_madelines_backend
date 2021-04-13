# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Item.destroy_all
Category.destroy_all


fruit = Category.create(name: 'fruit')
veg = Category.create(name: 'veggies')
dairy = Category.create(name: 'dairy')


Item.create([
    {name: 'Apple', price: 2.99,  description: 'red fruit that keeps the doctor away', category: fruit},
    {name: 'Banana', price: 5.99, description: 'yellow fruit adored by monkeys', category: fruit},
    {name: 'Kiwi', price: 5.99,  description: 'green', category: fruit},
    {name: 'Blueberries', price: 5.99,  description: 'tasty blue fruit', category: fruit},
    {name: 'Carrot', price: 3.99,  description: 'Helps you see at night; orange in color.', category: veg},
    {name: 'Kale', price: 5.99, description: "so delicious", category: veg},
    {name: 'Ice Cream', price: 4.99,  description: 'Best item in the store!', category: dairy}
])