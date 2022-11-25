require 'test_helper'

class UserControllerTest < ActionDispatch::IntegrationTest
  test "should get Favorites" do
    get user_Favorites_url
    assert_response :success
  end

end
