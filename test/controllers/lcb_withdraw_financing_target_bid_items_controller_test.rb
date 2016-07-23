require 'test_helper'

class LcbWithdrawFinancingTargetBidItemsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @lcb_withdraw_financing_target_bid_item = lcb_withdraw_financing_target_bid_items(:one)
  end

  test "should get index" do
    get lcb_withdraw_financing_target_bid_items_url
    assert_response :success
  end

  test "should get new" do
    get new_lcb_withdraw_financing_target_bid_item_url
    assert_response :success
  end

  test "should create lcb_withdraw_financing_target_bid_item" do
    assert_difference('LcbWithdrawFinancingTargetBidItem.count') do
      post lcb_withdraw_financing_target_bid_items_url, params: { lcb_withdraw_financing_target_bid_item: { create_uid: @lcb_withdraw_financing_target_bid_item.create_uid, financing_target_bid_id: @lcb_withdraw_financing_target_bid_item.financing_target_bid_id, id: @lcb_withdraw_financing_target_bid_item.id, owner_id: @lcb_withdraw_financing_target_bid_item.owner_id, status: @lcb_withdraw_financing_target_bid_item.status, withdraw_id: @lcb_withdraw_financing_target_bid_item.withdraw_id, withdraw_principal: @lcb_withdraw_financing_target_bid_item.withdraw_principal, withdraw_profit: @lcb_withdraw_financing_target_bid_item.withdraw_profit, write_uid: @lcb_withdraw_financing_target_bid_item.write_uid } }
    end

    assert_redirected_to lcb_withdraw_financing_target_bid_item_path(LcbWithdrawFinancingTargetBidItem.last)
  end

  test "should show lcb_withdraw_financing_target_bid_item" do
    get lcb_withdraw_financing_target_bid_item_url(@lcb_withdraw_financing_target_bid_item)
    assert_response :success
  end

  test "should get edit" do
    get edit_lcb_withdraw_financing_target_bid_item_url(@lcb_withdraw_financing_target_bid_item)
    assert_response :success
  end

  test "should update lcb_withdraw_financing_target_bid_item" do
    patch lcb_withdraw_financing_target_bid_item_url(@lcb_withdraw_financing_target_bid_item), params: { lcb_withdraw_financing_target_bid_item: { create_uid: @lcb_withdraw_financing_target_bid_item.create_uid, financing_target_bid_id: @lcb_withdraw_financing_target_bid_item.financing_target_bid_id, id: @lcb_withdraw_financing_target_bid_item.id, owner_id: @lcb_withdraw_financing_target_bid_item.owner_id, status: @lcb_withdraw_financing_target_bid_item.status, withdraw_id: @lcb_withdraw_financing_target_bid_item.withdraw_id, withdraw_principal: @lcb_withdraw_financing_target_bid_item.withdraw_principal, withdraw_profit: @lcb_withdraw_financing_target_bid_item.withdraw_profit, write_uid: @lcb_withdraw_financing_target_bid_item.write_uid } }
    assert_redirected_to lcb_withdraw_financing_target_bid_item_path(@lcb_withdraw_financing_target_bid_item)
  end

  test "should destroy lcb_withdraw_financing_target_bid_item" do
    assert_difference('LcbWithdrawFinancingTargetBidItem.count', -1) do
      delete lcb_withdraw_financing_target_bid_item_url(@lcb_withdraw_financing_target_bid_item)
    end

    assert_redirected_to lcb_withdraw_financing_target_bid_items_path
  end
end
