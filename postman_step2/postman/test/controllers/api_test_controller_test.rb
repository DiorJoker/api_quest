require "test_helper"

class ApiTestControllerTest < ActionDispatch::IntegrationTest
  test "should get return" do
    get api_test_return_url
    assert_response :success
  end
end
