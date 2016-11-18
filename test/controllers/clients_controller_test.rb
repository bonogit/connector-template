require 'test_helper'

class ClientsControllerTest < ActionController::TestCase
  # test "the truth" do
  #   assert true
  # end
  def setup
  	@client = clients(:ipso)
  end
  test "should get new client" do
  	get :new
  	assert_response :success
  end
end
