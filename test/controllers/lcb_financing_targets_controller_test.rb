require 'test_helper'

class LcbFinancingTargetsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @lcb_financing_target = lcb_financing_targets(:one)
  end

  test "should get index" do
    get lcb_financing_targets_url
    assert_response :success
  end

  test "should get new" do
    get new_lcb_financing_target_url
    assert_response :success
  end

  test "should create lcb_financing_target" do
    assert_difference('LcbFinancingTarget.count') do
      post lcb_financing_targets_url, params: { lcb_financing_target: { annualized_rates: @lcb_financing_target.annualized_rates, begin_date: @lcb_financing_target.begin_date, bid_count: @lcb_financing_target.bid_count, cash_mask: @lcb_financing_target.cash_mask, code: @lcb_financing_target.code, collect_amount: @lcb_financing_target.collect_amount, create_uid: @lcb_financing_target.create_uid, description: @lcb_financing_target.description, draft_info: @lcb_financing_target.draft_info, end_date: @lcb_financing_target.end_date, finish_amount: @lcb_financing_target.finish_amount, id: @lcb_financing_target.id, interest_way: @lcb_financing_target.interest_way, limit_amount: @lcb_financing_target.limit_amount, min_amount: @lcb_financing_target.min_amount, name: @lcb_financing_target.name, new_investor: @lcb_financing_target.new_investor, owner_id: @lcb_financing_target.owner_id, period: @lcb_financing_target.period, pics: @lcb_financing_target.pics, pics_description: @lcb_financing_target.pics_description, profit_flag: @lcb_financing_target.profit_flag, status: @lcb_financing_target.status, type: @lcb_financing_target.type, write_uid: @lcb_financing_target.write_uid } }
    end

    assert_redirected_to lcb_financing_target_path(LcbFinancingTarget.last)
  end

  test "should show lcb_financing_target" do
    get lcb_financing_target_url(@lcb_financing_target)
    assert_response :success
  end

  test "should get edit" do
    get edit_lcb_financing_target_url(@lcb_financing_target)
    assert_response :success
  end

  test "should update lcb_financing_target" do
    patch lcb_financing_target_url(@lcb_financing_target), params: { lcb_financing_target: { annualized_rates: @lcb_financing_target.annualized_rates, begin_date: @lcb_financing_target.begin_date, bid_count: @lcb_financing_target.bid_count, cash_mask: @lcb_financing_target.cash_mask, code: @lcb_financing_target.code, collect_amount: @lcb_financing_target.collect_amount, create_uid: @lcb_financing_target.create_uid, description: @lcb_financing_target.description, draft_info: @lcb_financing_target.draft_info, end_date: @lcb_financing_target.end_date, finish_amount: @lcb_financing_target.finish_amount, id: @lcb_financing_target.id, interest_way: @lcb_financing_target.interest_way, limit_amount: @lcb_financing_target.limit_amount, min_amount: @lcb_financing_target.min_amount, name: @lcb_financing_target.name, new_investor: @lcb_financing_target.new_investor, owner_id: @lcb_financing_target.owner_id, period: @lcb_financing_target.period, pics: @lcb_financing_target.pics, pics_description: @lcb_financing_target.pics_description, profit_flag: @lcb_financing_target.profit_flag, status: @lcb_financing_target.status, type: @lcb_financing_target.type, write_uid: @lcb_financing_target.write_uid } }
    assert_redirected_to lcb_financing_target_path(@lcb_financing_target)
  end

  test "should destroy lcb_financing_target" do
    assert_difference('LcbFinancingTarget.count', -1) do
      delete lcb_financing_target_url(@lcb_financing_target)
    end

    assert_redirected_to lcb_financing_targets_path
  end
end
