require 'test_helper'

class CityControllerTest < ActionDispatch::IntegrationTest
  test "should get sindex" do
    get city_sindex_url
    assert_response :success
  end

  test "should get show" do
    get city_show_url
    assert_response :success
  end

end
