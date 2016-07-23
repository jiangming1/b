require 'test_helper'

class LcbUsersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @lcb_user = lcb_users(:one)
  end

  test "should get index" do
    get lcb_users_url
    assert_response :success
  end

  test "should get new" do
    get new_lcb_user_url
    assert_response :success
  end

  test "should create lcb_user" do
    assert_difference('LcbUser.count') do
      post lcb_users_url, params: { lcb_user: { channel: @lcb_user.channel, create_uid: @lcb_user.create_uid, id: @lcb_user.id, invite_code: @lcb_user.invite_code, invite_from: @lcb_user.invite_from, invite_qr_code: @lcb_user.invite_qr_code, login_name: @lcb_user.login_name, login_pwd: @lcb_user.login_pwd, mobile: @lcb_user.mobile, owner_id: @lcb_user.owner_id, pay_pwd: @lcb_user.pay_pwd, pid: @lcb_user.pid, remain_profit: @lcb_user.remain_profit, stutus: @lcb_user.stutus, true_name: @lcb_user.true_name, write_uid: @lcb_user.write_uid } }
    end

    assert_redirected_to lcb_user_path(LcbUser.last)
  end

  test "should show lcb_user" do
    get lcb_user_url(@lcb_user)
    assert_response :success
  end

  test "should get edit" do
    get edit_lcb_user_url(@lcb_user)
    assert_response :success
  end

  test "should update lcb_user" do
    patch lcb_user_url(@lcb_user), params: { lcb_user: { channel: @lcb_user.channel, create_uid: @lcb_user.create_uid, id: @lcb_user.id, invite_code: @lcb_user.invite_code, invite_from: @lcb_user.invite_from, invite_qr_code: @lcb_user.invite_qr_code, login_name: @lcb_user.login_name, login_pwd: @lcb_user.login_pwd, mobile: @lcb_user.mobile, owner_id: @lcb_user.owner_id, pay_pwd: @lcb_user.pay_pwd, pid: @lcb_user.pid, remain_profit: @lcb_user.remain_profit, stutus: @lcb_user.stutus, true_name: @lcb_user.true_name, write_uid: @lcb_user.write_uid } }
    assert_redirected_to lcb_user_path(@lcb_user)
  end

  test "should destroy lcb_user" do
    assert_difference('LcbUser.count', -1) do
      delete lcb_user_url(@lcb_user)
    end

    assert_redirected_to lcb_users_path
  end
end
