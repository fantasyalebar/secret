require 'test_helper'

class SessionHelperControllerTest < ActionDispatch::IntegrationTest
  test "should get log_in" do
    get session_helper_log_in_url
    assert_response :success
  end

  test "should get current_user" do
    get session_helper_current_user_url
    assert_response :success
  end

  test "should get logged_in" do
    get session_helper_logged_in_url
    assert_response :success
  end

  test "should get log_out" do
    get session_helper_log_out_url
    assert_response :success
  end

end
