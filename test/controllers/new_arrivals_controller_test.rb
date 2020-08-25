require 'test_helper'

class NewArrivalsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get new_arrivals_index_url
    assert_response :success
  end

end
