require 'test_helper'

class ToSellOnThisSiteControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get to_sell_on_this_site_index_url
    assert_response :success
  end

end
