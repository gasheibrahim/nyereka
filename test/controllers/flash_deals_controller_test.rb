require 'test_helper'

class FlashDealsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get flash_deals_index_url
    assert_response :success
  end

end
