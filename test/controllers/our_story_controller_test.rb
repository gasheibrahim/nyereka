require 'test_helper'

class OurStoryControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get our_story_index_url
    assert_response :success
  end

end
