require 'test_helper'

class AuthorControllerTest < ActionDispatch::IntegrationTest
  test "should get description" do
    get author_description_url
    assert_response :success
  end

end
