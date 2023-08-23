require "test_helper"

class ProfessionalsControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get professionals_show_url
    assert_response :success
  end

  test "should get edit" do
    get professionals_edit_url
    assert_response :success
  end

  test "should get update" do
    get professionals_update_url
    assert_response :success
  end
end
