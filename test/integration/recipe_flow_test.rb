require 'test_helper'

class RecipeFlowTest < ActionDispatch::IntegrationTest
  fixtures :recipes
  test "create recipes" do
    # load the test record and navigate to the new recipe page
    curry = recipes(:curry)
    get "/recipes/new"
    assert_response :success
    # post the data to the new method and assert for a success response
    post "/recipes/new",
      params: { recipe: {  title: curry.title } }
    assert_response :redirect
    follow_redirect!

  end
end
