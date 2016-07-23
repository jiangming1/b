require 'test_helper'

class LcbCashCouponDefsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @lcb_cash_coupon_def = lcb_cash_coupon_defs(:one)
  end

  test "should get index" do
    get lcb_cash_coupon_defs_url
    assert_response :success
  end

  test "should get new" do
    get new_lcb_cash_coupon_def_url
    assert_response :success
  end

  test "should create lcb_cash_coupon_def" do
    assert_difference('LcbCashCouponDef.count') do
      post lcb_cash_coupon_defs_url, params: { lcb_cash_coupon_def: { amount: @lcb_cash_coupon_def.amount, begin_time: @lcb_cash_coupon_def.begin_time, conditions: @lcb_cash_coupon_def.conditions, create_uid: @lcb_cash_coupon_def.create_uid, end_time: @lcb_cash_coupon_def.end_time, id: @lcb_cash_coupon_def.id, name: @lcb_cash_coupon_def.name, owner_id: @lcb_cash_coupon_def.owner_id, summary: @lcb_cash_coupon_def.summary, total_quantity: @lcb_cash_coupon_def.total_quantity, used_quantity: @lcb_cash_coupon_def.used_quantity, valid_day: @lcb_cash_coupon_def.valid_day, write_uid: @lcb_cash_coupon_def.write_uid } }
    end

    assert_redirected_to lcb_cash_coupon_def_path(LcbCashCouponDef.last)
  end

  test "should show lcb_cash_coupon_def" do
    get lcb_cash_coupon_def_url(@lcb_cash_coupon_def)
    assert_response :success
  end

  test "should get edit" do
    get edit_lcb_cash_coupon_def_url(@lcb_cash_coupon_def)
    assert_response :success
  end

  test "should update lcb_cash_coupon_def" do
    patch lcb_cash_coupon_def_url(@lcb_cash_coupon_def), params: { lcb_cash_coupon_def: { amount: @lcb_cash_coupon_def.amount, begin_time: @lcb_cash_coupon_def.begin_time, conditions: @lcb_cash_coupon_def.conditions, create_uid: @lcb_cash_coupon_def.create_uid, end_time: @lcb_cash_coupon_def.end_time, id: @lcb_cash_coupon_def.id, name: @lcb_cash_coupon_def.name, owner_id: @lcb_cash_coupon_def.owner_id, summary: @lcb_cash_coupon_def.summary, total_quantity: @lcb_cash_coupon_def.total_quantity, used_quantity: @lcb_cash_coupon_def.used_quantity, valid_day: @lcb_cash_coupon_def.valid_day, write_uid: @lcb_cash_coupon_def.write_uid } }
    assert_redirected_to lcb_cash_coupon_def_path(@lcb_cash_coupon_def)
  end

  test "should destroy lcb_cash_coupon_def" do
    assert_difference('LcbCashCouponDef.count', -1) do
      delete lcb_cash_coupon_def_url(@lcb_cash_coupon_def)
    end

    assert_redirected_to lcb_cash_coupon_defs_path
  end
end
