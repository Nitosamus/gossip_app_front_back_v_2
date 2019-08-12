require 'test_helper'

class GossipsControllerTest < ActionDispatch::IntegrationTest
  test "should get :index" do
    get gossips_:index_url
    assert_response :success
  end

  test "should get :show" do
    get gossips_:show_url
    assert_response :success
  end

  test "should get :new" do
    get gossips_:new_url
    assert_response :success
  end

  test "should get :create" do
    get gossips_:create_url
    assert_response :success
  end

  test "should get :edit" do
    get gossips_:edit_url
    assert_response :success
  end

  test "should get :update" do
    get gossips_:update_url
    assert_response :success
  end

  test "should get :destroy" do
    get gossips_:destroy_url
    assert_response :success
  end

end
