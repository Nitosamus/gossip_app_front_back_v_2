require 'test_helper'

class AuteursControllerTest < ActionDispatch::IntegrationTest
  test "should get presentation" do
    get auteurs_presentation_url
    assert_response :success
  end

end
