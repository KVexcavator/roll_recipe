# This file should contain all the record creation needed to seed the database with its default values.

#default data to food_type after db:seeds  the "creae" need revemp by the "first_or_create"
food_types = ["Curry", "Dessert", "Sides", "Breakfast"]
food_types.each{|d| FoodType.where(:name => d).first_or_create}

