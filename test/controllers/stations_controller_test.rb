require 'test_helper'

class StationsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get stations_index_url
    assert_response :success
  end

  test "should get show" do
    get stations_show_url
    assert_response :success
  end

  test "should get update" do
    get stations_update_url
    assert_response :success
  end

  test "should get destroy" do
    get stations_destroy_url
    assert_response :success
  end

  test "should get new" do
    get stations_new_url
    assert_response :success
  end

  test "should get edit" do
    get stations_edit_url
    assert_response :success
  end

end
