class ApplicationController < ActionController::Base
  
  helper_method :food_preferences, :food_types, :cuisines

  def food_preferences
    @food_preferences = FoodPreference.all   
  end 
  def food_types
    @food_types = FoodType.all
  end
  def cuisines
    @cuisines = Cuisine.all
  end

end
