require 'test_helper'

class LcbCashCouponsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @lcb_cash_coupon = lcb_cash_coupons(:one)
  end

  test "should get index" do
    get lcb_cash_coupons_url
    assert_response :success
  end

  test "should get new" do
    get new_lcb_cash_coupon_url
    assert_response :success
  end

  test "should create lcb_cash_coupon" do
    assert_difference('LcbCashCoupon.count') do
      post lcb_cash_coupons_url, params: { lcb_cash_coupon: { amount: @lcb_cash_coupon.amount, begin_time: @lcb_cash_coupon.begin_time, conditions: @lcb_cash_coupon.conditions, create_uid: @lcb_cash_coupon.create_uid, def_id: @lcb_cash_coupon.def_id, end_time: @lcb_cash_coupon.end_time, financing_target_bid_id: @lcb_cash_coupon.financing_target_bid_id, id: @lcb_cash_coupon.id, name: @lcb_cash_coupon.name, owner_id: @lcb_cash_coupon.owner_id, summary: @lcb_cash_coupon.summary, used_amount: @lcb_cash_coupon.used_amount, user_id: @lcb_cash_coupon.user_id, write_uid: @lcb_cash_coupon.write_uid } }
    end

    assert_redirected_to lcb_cash_coupon_path(LcbCashCoupon.last)
  end

  test "should show lcb_cash_coupon" do
    get lcb_cash_coupon_url(@lcb_cash_coupon)
    assert_response :success
  end

  test "should get edit" do
    get edit_lcb_cash_coupon_url(@lcb_cash_coupon)
    assert_response :success
  end

  test "should update lcb_cash_coupon" do
    patch lcb_cash_coupon_url(@lcb_cash_coupon), params: { lcb_cash_coupon: { amount: @lcb_cash_coupon.amount, begin_time: @lcb_cash_coupon.begin_time, conditions: @lcb_cash_coupon.conditions, create_uid: @lcb_cash_coupon.create_uid, def_id: @lcb_cash_coupon.def_id, end_time: @lcb_cash_coupon.end_time, financing_target_bid_id: @lcb_cash_coupon.financing_target_bid_id, id: @lcb_cash_coupon.id, name: @lcb_cash_coupon.name, owner_id: @lcb_cash_coupon.owner_id, summary: @lcb_cash_coupon.summary, used_amount: @lcb_cash_coupon.used_amount, user_id: @lcb_cash_coupon.user_id, write_uid: @lcb_cash_coupon.write_uid } }
    assert_redirected_to lcb_cash_coupon_path(@lcb_cash_coupon)
  end

  test "should destroy lcb_cash_coupon" do
    assert_difference('LcbCashCoupon.count', -1) do
      delete lcb_cash_coupon_url(@lcb_cash_coupon)
    end

    assert_redirected_to lcb_cash_coupons_path
  end
end
