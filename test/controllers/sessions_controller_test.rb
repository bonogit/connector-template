require 'test_helper'

class SessionsControllerTest < ActionController::TestCase
  test "should get new session" do
    get :new
    assert_response :success
  end

end
