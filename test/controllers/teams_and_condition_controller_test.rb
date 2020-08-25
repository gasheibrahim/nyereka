require 'test_helper'

class TeamsAndConditionControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get teams_and_condition_index_url
    assert_response :success
  end

end
