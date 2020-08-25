require 'test_helper'

class ReturnAndExchangeControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get return_and_exchange_index_url
    assert_response :success
  end

end
