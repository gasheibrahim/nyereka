require 'test_helper'

class OurmissionControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get ourmission_index_url
    assert_response :success
  end

end
