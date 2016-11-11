require 'test_helper'

class HotkeysControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get hotkeys_index_url
    assert_response :success
  end

  test "should get show" do
    get hotkeys_show_url
    assert_response :success
  end

  test "should get new" do
    get hotkeys_new_url
    assert_response :success
  end

  test "should get create" do
    get hotkeys_create_url
    assert_response :success
  end

  test "should get destroy" do
    get hotkeys_destroy_url
    assert_response :success
  end

end
