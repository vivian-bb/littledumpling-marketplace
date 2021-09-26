require "test_helper"

class AboutControllerTest < ActionDispatch::IntegrationTest
  test "should get introduction" do
    get about_introduction_url
    assert_response :success
  end
end
