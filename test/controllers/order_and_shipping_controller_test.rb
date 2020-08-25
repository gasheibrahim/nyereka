require 'test_helper'

class OrderAndShippingControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get order_and_shipping_index_url
    assert_response :success
  end

end
