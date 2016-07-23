require 'test_helper'

class LcbManagerUsersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @lcb_manager_user = lcb_manager_users(:one)
  end

  test "should get index" do
    get lcb_manager_users_url
    assert_response :success
  end

  test "should get new" do
    get new_lcb_manager_user_url
    assert_response :success
  end

  test "should create lcb_manager_user" do
    assert_difference('LcbManagerUser.count') do
      post lcb_manager_users_url, params: { lcb_manager_user: { create_uid: @lcb_manager_user.create_uid, id: @lcb_manager_user.id, login_name: @lcb_manager_user.login_name, login_pwd: @lcb_manager_user.login_pwd, mobile: @lcb_manager_user.mobile, owner_id: @lcb_manager_user.owner_id, status: @lcb_manager_user.status, write_uid: @lcb_manager_user.write_uid } }
    end

    assert_redirected_to lcb_manager_user_path(LcbManagerUser.last)
  end

  test "should show lcb_manager_user" do
    get lcb_manager_user_url(@lcb_manager_user)
    assert_response :success
  end

  test "should get edit" do
    get edit_lcb_manager_user_url(@lcb_manager_user)
    assert_response :success
  end

  test "should update lcb_manager_user" do
    patch lcb_manager_user_url(@lcb_manager_user), params: { lcb_manager_user: { create_uid: @lcb_manager_user.create_uid, id: @lcb_manager_user.id, login_name: @lcb_manager_user.login_name, login_pwd: @lcb_manager_user.login_pwd, mobile: @lcb_manager_user.mobile, owner_id: @lcb_manager_user.owner_id, status: @lcb_manager_user.status, write_uid: @lcb_manager_user.write_uid } }
    assert_redirected_to lcb_manager_user_path(@lcb_manager_user)
  end

  test "should destroy lcb_manager_user" do
    assert_difference('LcbManagerUser.count', -1) do
      delete lcb_manager_user_url(@lcb_manager_user)
    end

    assert_redirected_to lcb_manager_users_path
  end
end
