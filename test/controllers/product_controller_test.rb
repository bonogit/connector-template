require 'test_helper'

class ProductControllerTest < ActionController::TestCase
  test "should get about" do
    get :about
    assert_response :success
  end

  test "should get api fetch" do
  	get :apifetch
    assert_response :success
  end

   test "should get api feed" do
  	get :apifeed
    assert_response :success
  end
end
