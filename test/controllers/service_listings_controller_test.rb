require "test_helper"

class ServiceListingsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get service_listings_new_url
    assert_response :success
  end

  test "should get create" do
    get service_listings_create_url
    assert_response :success
  end

  test "should get edit" do
    get service_listings_edit_url
    assert_response :success
  end

  test "should get update" do
    get service_listings_update_url
    assert_response :success
  end

  test "should get destroy" do
    get service_listings_destroy_url
    assert_response :success
  end
end
