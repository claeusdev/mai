# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

electronics_category = Category.where(name: "Electronics").first_or_create(name: "Electronics")
men_category = Category.where(name: "Men").first_or_create(name: "Men")
women_category = Category.where(name: "Women").first_or_create(name: "Women")
baby_category = Category.where(name: "Baby & Kids").first_or_create(name: "Baby & Kids")
home_category = Category.where(name: "Home & Furniture").first_or_create(name: "Home & Furniture")
beauty_category = Category.where(name: "Beauty & Health").first_or_create(name: "Beauty & Health")
grocery_category = Category.where(name: "Grocery").first_or_create(name: "Grocery")
autos_category = Category.where(name: "Autos & Vehicles").first_or_create(name: "Autos & Vehicles")


