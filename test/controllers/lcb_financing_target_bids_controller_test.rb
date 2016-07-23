require 'test_helper'

class LcbFinancingTargetBidsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @lcb_financing_target_bid = lcb_financing_target_bids(:one)
  end

  test "should get index" do
    get lcb_financing_target_bids_url
    assert_response :success
  end

  test "should get new" do
    get new_lcb_financing_target_bid_url
    assert_response :success
  end

  test "should create lcb_financing_target_bid" do
    assert_difference('LcbFinancingTargetBid.count') do
      post lcb_financing_target_bids_url, params: { lcb_financing_target_bid: { annualized_rates: @lcb_financing_target_bid.annualized_rates, bank_card_no: @lcb_financing_target_bid.bank_card_no, bank_name: @lcb_financing_target_bid.bank_name, bank_no: @lcb_financing_target_bid.bank_no, begin_profit: @lcb_financing_target_bid.begin_profit, bid_user_id: @lcb_financing_target_bid.bid_user_id, buy_amount: @lcb_financing_target_bid.buy_amount, cash_coupon_amount: @lcb_financing_target_bid.cash_coupon_amount, cash_coupon_id: @lcb_financing_target_bid.cash_coupon_id, certificate_id: @lcb_financing_target_bid.certificate_id, channel: @lcb_financing_target_bid.channel, create_uid: @lcb_financing_target_bid.create_uid, deduction_profit: @lcb_financing_target_bid.deduction_profit, end_profit: @lcb_financing_target_bid.end_profit, financing_target_id: @lcb_financing_target_bid.financing_target_id, id: @lcb_financing_target_bid.id, lock_amount: @lcb_financing_target_bid.lock_amount, owner_id: @lcb_financing_target_bid.owner_id, pay: @lcb_financing_target_bid.pay, pay_channel: @lcb_financing_target_bid.pay_channel, pay_mark: @lcb_financing_target_bid.pay_mark, pay_name: @lcb_financing_target_bid.pay_name, pay_pid: @lcb_financing_target_bid.pay_pid, pay_time: @lcb_financing_target_bid.pay_time, re_begin_profit: @lcb_financing_target_bid.re_begin_profit, summary: @lcb_financing_target_bid.summary, type: @lcb_financing_target_bid.type, withdraw_principal: @lcb_financing_target_bid.withdraw_principal, withdraw_profit: @lcb_financing_target_bid.withdraw_profit, withdraw_type: @lcb_financing_target_bid.withdraw_type, write_uid: @lcb_financing_target_bid.write_uid } }
    end

    assert_redirected_to lcb_financing_target_bid_path(LcbFinancingTargetBid.last)
  end

  test "should show lcb_financing_target_bid" do
    get lcb_financing_target_bid_url(@lcb_financing_target_bid)
    assert_response :success
  end

  test "should get edit" do
    get edit_lcb_financing_target_bid_url(@lcb_financing_target_bid)
    assert_response :success
  end

  test "should update lcb_financing_target_bid" do
    patch lcb_financing_target_bid_url(@lcb_financing_target_bid), params: { lcb_financing_target_bid: { annualized_rates: @lcb_financing_target_bid.annualized_rates, bank_card_no: @lcb_financing_target_bid.bank_card_no, bank_name: @lcb_financing_target_bid.bank_name, bank_no: @lcb_financing_target_bid.bank_no, begin_profit: @lcb_financing_target_bid.begin_profit, bid_user_id: @lcb_financing_target_bid.bid_user_id, buy_amount: @lcb_financing_target_bid.buy_amount, cash_coupon_amount: @lcb_financing_target_bid.cash_coupon_amount, cash_coupon_id: @lcb_financing_target_bid.cash_coupon_id, certificate_id: @lcb_financing_target_bid.certificate_id, channel: @lcb_financing_target_bid.channel, create_uid: @lcb_financing_target_bid.create_uid, deduction_profit: @lcb_financing_target_bid.deduction_profit, end_profit: @lcb_financing_target_bid.end_profit, financing_target_id: @lcb_financing_target_bid.financing_target_id, id: @lcb_financing_target_bid.id, lock_amount: @lcb_financing_target_bid.lock_amount, owner_id: @lcb_financing_target_bid.owner_id, pay: @lcb_financing_target_bid.pay, pay_channel: @lcb_financing_target_bid.pay_channel, pay_mark: @lcb_financing_target_bid.pay_mark, pay_name: @lcb_financing_target_bid.pay_name, pay_pid: @lcb_financing_target_bid.pay_pid, pay_time: @lcb_financing_target_bid.pay_time, re_begin_profit: @lcb_financing_target_bid.re_begin_profit, summary: @lcb_financing_target_bid.summary, type: @lcb_financing_target_bid.type, withdraw_principal: @lcb_financing_target_bid.withdraw_principal, withdraw_profit: @lcb_financing_target_bid.withdraw_profit, withdraw_type: @lcb_financing_target_bid.withdraw_type, write_uid: @lcb_financing_target_bid.write_uid } }
    assert_redirected_to lcb_financing_target_bid_path(@lcb_financing_target_bid)
  end

  test "should destroy lcb_financing_target_bid" do
    assert_difference('LcbFinancingTargetBid.count', -1) do
      delete lcb_financing_target_bid_url(@lcb_financing_target_bid)
    end

    assert_redirected_to lcb_financing_target_bids_path
  end
end
