require 'test_helper'

class OdaiControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get odai_index_url
    assert_response :success
  end

  test "should get show" do
    get odai_show_url
    assert_response :success
  end

  test "should get new" do
    get odai_new_url
    assert_response :success
  end

  test "should get create" do
    get odai_create_url
    assert_response :success
  end

  test "should get edit" do
    get odai_edit_url
    assert_response :success
  end

  test "should get update" do
    get odai_update_url
    assert_response :success
  end

  test "should get destroy" do
    get odai_destroy_url
    assert_response :success
  end

end
