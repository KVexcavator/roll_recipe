
require 'test_helper'

class RecipeFlowsTest < ActionDispatch::IntegrationTest
  fixtures :recipes
  test "create recipes" do
    https!
    # load the test record and navigate to the new recipe page
    curry = recipes(:curry)
    get "/recipes/new"
    # post the data to the new method and assert for a success response
    assert_response :success
    post_via_redirect "/recipes/new", title: recipes(:curry).title

    assert_equal '/recipes', path
    assert_equal 'Create Recipe', flash[:notice]
    https!(false)
    get "/recipes"
    assert_response :success
    assert assigns(:recipes)
  end
end


