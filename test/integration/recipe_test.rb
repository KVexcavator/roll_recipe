require 'test_helper'
# load the test record and navigate to the new recipe page
curry = recipes(:curry)
get "/recipes/new"
# post the data to the new method and assert for a success response
assert_response :success
post_via_redirect "/recipes/new", title: recipes(:curry).title


