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


Subcategory.where(name: "Phones & Accesories", category_id: electronics_category.id).first_or_create(name: "Phones & Accesories", category_id: electronics_category.id)
Subcategory.where(name: "Cameras & Photo", category_id: electronics_category.id).first_or_create(name: "Cameras & Photo", category_id: electronics_category.id)
Subcategory.where(name: "Computers & Tablets", category_id: electronics_category.id).first_or_create(name: "Computers & Tablets", category_id: electronics_category.id)
Subcategory.where(name: "TV & Video", category_id: electronics_category.id).first_or_create(name: "TV & Video", category_id: electronics_category.id)
Subcategory.where(name: "Games & Console", category_id: electronics_category.id).first_or_create(name: "Games & Console", category_id: electronics_category.id)

Subcategory.where(name: "Clothing", category_id: men_category.id).first_or_create(name: "Clothing", category_id: men_category.id)
Subcategory.where(name: "Shoes", category_id: men_category.id).first_or_create(name: "Shoes", category_id: men_category.id)
Subcategory.where(name: "Accesories", category_id: men_category.id).first_or_create(name: "Accesories", category_id: men_category.id)

Subcategory.where(name: "Clothing", category_id: women_category.id).first_or_create(name: "Clothing", category_id: women_category.id)
Subcategory.where(name: "Shoes", category_id: women_category.id).first_or_create(name: "Shoes", category_id: women_category.id)
Subcategory.where(name: "Accesories", category_id: women_category.id).first_or_create(name: "Accesories", category_id: women_category.id)

Subcategory.where(name: "Clothing", category_id: baby_category.id).first_or_create(name: "Clothing", category_id: baby_category.id)
Subcategory.where(name: "Shoes", category_id: baby_category.id).first_or_create(name: "Shoes", category_id: baby_category.id)
Subcategory.where(name: "Toys", category_id: baby_category.id).first_or_create(name: "Toys", category_id: baby_category.id)
Subcategory.where(name: "Games", category_id: baby_category.id).first_or_create(name: "Games", category_id: baby_category.id)
Subcategory.where(name: "Accesories", category_id: baby_category.id).first_or_create(name: "Accesories", category_id: baby_category.id)


Subcategory.where(name: "Home Decor", category_id: home_category.id).first_or_create(name: "Home Decor", category_id: home_category.id)
Subcategory.where(name: "Furniture", category_id: home_category.id).first_or_create(name: "Furniture", category_id: home_category.id)
Subcategory.where(name: "Beddings", category_id: home_category.id).first_or_create(name: "Beddings", category_id: home_category.id)
Subcategory.where(name: "Appliances", category_id: home_category.id).first_or_create(name: "Appliances", category_id: home_category.id)
Subcategory.where(name: "Pet Supply", category_id: home_category.id).first_or_create(name: "Pet Supply", category_id: home_category.id)
Subcategory.where(name: "Kitchen & Dinning", category_id: home_category.id).first_or_create(name: "Kitchen & Dinning", category_id: home_category.id)


Subcategory.where(name: "Mens Grooming", category_id: beauty_category.id).first_or_create(name: "Mens Grooming", category_id: beauty_category.id)
Subcategory.where(name: "Fragrance", category_id: beauty_category.id).first_or_create(name: "Fragrance", category_id: beauty_category.id)
Subcategory.where(name: "Make Up", category_id: beauty_category.id).first_or_create(name: "Make Up", category_id: beauty_category.id)
Subcategory.where(name: "Face & Body Care", category_id: beauty_category.id).first_or_create(name: "Face & Body Care", category_id: beauty_category.id)
Subcategory.where(name: "Hair", category_id: beauty_category.id).first_or_create(name: "Hair", category_id: beauty_category.id)

Subcategory.where(name: "Cars & Trucks", category_id: autos_category.id).first_or_create(name: "Cars & Trucks", category_id: autos_category.id)
Subcategory.where(name: "Motocycles", category_id: autos_category.id).first_or_create(name: "Motocycles", category_id: autos_category.id)
Subcategory.where(name: "Parts & Accesories", category_id: autos_category.id).first_or_create(name: "Parts & Accesories", category_id: autos_category.id)
Subcategory.where(name: "Tyres & Wheels", category_id: autos_category.id).first_or_create(name: "Tyres & Wheels", category_id: autos_category.id)
Subcategory.where(name: "Other Vehicles", category_id: autos_category.id).first_or_create(name: "Other Vehicles", category_id: autos_category.id)

Subcategory.where(name: "Daily Needs", category_id: grocery_category.id).first_or_create(name: "Daily Needs", category_id: grocery_category.id)
Subcategory.where(name: "Wine", category_id: grocery_category.id).first_or_create(name: "Wine", category_id: grocery_category.id)
Subcategory.where(name: "Special Diets", category_id: grocery_category.id).first_or_create(name: "Special Diets", category_id: grocery_category.id)
