require 'test_helper'

class OurvissionControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get ourvission_index_url
    assert_response :success
  end

end
