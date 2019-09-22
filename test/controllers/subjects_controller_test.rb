require 'test_helper'

class SubjectsControllerTest < ActionDispatch::IntegrationTest
  test "should get top" do
    get subjects_top_url
    assert_response :success
  end

end
