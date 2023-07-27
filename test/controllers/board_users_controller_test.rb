require "test_helper"

class BoardUsersControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get board_users_new_url
    assert_response :success
  end

  test "should get create" do
    get board_users_create_url
    assert_response :success
  end

  test "should get me" do
    get board_users_me_url
    assert_response :success
  end
end
