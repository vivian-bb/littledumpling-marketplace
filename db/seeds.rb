# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
categories = [
    {name:"Desserts", description:"The sweet trandition Chinese food."},
    {name:"Dumpling", description:"Bite-sized Chinese food that's hand made variety of fillings in dough, cooked by boiling water or fry."},
    {name:"Baozi", description:"Baozi or Bao is a type of yeast-leavened filled bun in various Chinese cuisines. It's filling with meat paste or vegies."},
    {name:"Soup", description:"Soup is slow cooked sweet or salty taste hot food."},
    {name:"Drinks", description:"Soft drinks, Juice and alcohol."},
    {name:"Dishes", description:"Vegie or Meat dishes."}
]

# if User.count == 0
#     User.create(username:"Tester", email: "tester@gmail.com", password: "password", password_confirmation: "password")
# end

if Category.count == 0
   categories.each do |category|
        Category.create(name: category[:name], description: category[:description])
        puts "create #{category[:name]} category"
    end
end