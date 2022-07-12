require "test_helper"

class ShowsControllerTest < ActionDispatch::IntegrationTest
  test "should get top" do
    get shows_top_url
    assert_response :success
  end
end
