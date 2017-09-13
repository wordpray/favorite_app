require 'test_helper'

class FavoritesControllerTest < ActionDispatch::IntegrationTest
  test "should get home" do
    get favorites_home_url
    assert_response :success
  end

  test "should get about" do
    get favorites_about_url
    assert_response :success
  end

  test "should get contact" do
    get favorites_contact_url
    assert_response :success
  end

end
