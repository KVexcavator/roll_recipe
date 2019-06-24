# This file should contain all the record creation needed to seed the database with its default values.

#default data for food_type after db:seeds  the "creae" need revemp by the "first_or_create"
food_types = ["Curry", "Dessert", "Sides", "Breakfast"]
food_types.each{|d| FoodType.where(:name => d).first_or_create}

# default data for food_preference
food_preferences = ["Vegetarian", "Vegan", "Meat", "Dairy"]
food_preferences.each{|d| FoodPreference.where(:name => d).first_or_create}

# default date for cuisine
cuisines = ["Italian", "Mexican", "Indian", "Chinese"]
cuisines.each{|d| Cuisine.where(:name => d).first_or_create}

