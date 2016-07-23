require 'test_helper'

class LcbWithdrawsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @lcb_withdraw = lcb_withdraws(:one)
  end

  test "should get index" do
    get lcb_withdraws_url
    assert_response :success
  end

  test "should get new" do
    get new_lcb_withdraw_url
    assert_response :success
  end

  test "should create lcb_withdraw" do
    assert_difference('LcbWithdraw.count') do
      post lcb_withdraws_url, params: { lcb_withdraw: { bank_card_no: @lcb_withdraw.bank_card_no, bank_name: @lcb_withdraw.bank_name, bank_no: @lcb_withdraw.bank_no, create_uid: @lcb_withdraw.create_uid, id: @lcb_withdraw.id, mark: @lcb_withdraw.mark, name: @lcb_withdraw.name, opt_summary: @lcb_withdraw.opt_summary, opt_time: @lcb_withdraw.opt_time, owner_id: @lcb_withdraw.owner_id, pid: @lcb_withdraw.pid, status: @lcb_withdraw.status, subtract_remain_profit: @lcb_withdraw.subtract_remain_profit, summary: @lcb_withdraw.summary, type: @lcb_withdraw.type, user_id: @lcb_withdraw.user_id, withdraw_principal: @lcb_withdraw.withdraw_principal, withdraw_profit: @lcb_withdraw.withdraw_profit, write_uid: @lcb_withdraw.write_uid } }
    end

    assert_redirected_to lcb_withdraw_path(LcbWithdraw.last)
  end

  test "should show lcb_withdraw" do
    get lcb_withdraw_url(@lcb_withdraw)
    assert_response :success
  end

  test "should get edit" do
    get edit_lcb_withdraw_url(@lcb_withdraw)
    assert_response :success
  end

  test "should update lcb_withdraw" do
    patch lcb_withdraw_url(@lcb_withdraw), params: { lcb_withdraw: { bank_card_no: @lcb_withdraw.bank_card_no, bank_name: @lcb_withdraw.bank_name, bank_no: @lcb_withdraw.bank_no, create_uid: @lcb_withdraw.create_uid, id: @lcb_withdraw.id, mark: @lcb_withdraw.mark, name: @lcb_withdraw.name, opt_summary: @lcb_withdraw.opt_summary, opt_time: @lcb_withdraw.opt_time, owner_id: @lcb_withdraw.owner_id, pid: @lcb_withdraw.pid, status: @lcb_withdraw.status, subtract_remain_profit: @lcb_withdraw.subtract_remain_profit, summary: @lcb_withdraw.summary, type: @lcb_withdraw.type, user_id: @lcb_withdraw.user_id, withdraw_principal: @lcb_withdraw.withdraw_principal, withdraw_profit: @lcb_withdraw.withdraw_profit, write_uid: @lcb_withdraw.write_uid } }
    assert_redirected_to lcb_withdraw_path(@lcb_withdraw)
  end

  test "should destroy lcb_withdraw" do
    assert_difference('LcbWithdraw.count', -1) do
      delete lcb_withdraw_url(@lcb_withdraw)
    end

    assert_redirected_to lcb_withdraws_path
  end
end
