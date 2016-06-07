# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Category.where(name: "Electronics").first_or_create(name: "Electronics")
Category.where(name: "Men").first_or_create(name: "Men")
Category.where(name: "Women").first_or_create(name: "Women")
Category.where(name: "Baby & Kids").first_or_create(name: "Baby & Kids")
Category.where(name: "Home & Furniture").first_or_create(name: "Home & Furniture")
Category.where(name: "Book & Media").first_or_create(name: "Book & Media")
Category.where(name: "Daily Needs").first_or_create(name: "Daily Needs")
Category.where(name: "Autos & Sports").first_or_create(name: "Autos & Sports")
Category.where(name: "Real Estate").first_or_create(name: "Real Estate")
