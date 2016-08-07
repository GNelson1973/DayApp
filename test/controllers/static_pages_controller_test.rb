require 'test_helper'

class StaticPagesControllerTest < ActionController::TestCase
  test "should get results" do
    get :results
    assert_response :success
  end

  test "should get goals" do
    get :goals
    assert_response :success
  end

end
