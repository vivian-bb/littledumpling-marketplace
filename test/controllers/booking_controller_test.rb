require "test_helper"

class BookingControllerTest < ActionDispatch::IntegrationTest
  test "should get enquiries" do
    get booking_enquiries_url
    assert_response :success
  end
end
