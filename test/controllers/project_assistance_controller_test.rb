require 'test_helper'

class ProjectAssistanceControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get project_assistance_index_url
    assert_response :success
  end

end
