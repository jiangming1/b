require 'test_helper'

class LcbUserPackageItemsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @lcb_user_package_item = lcb_user_package_items(:one)
  end

  test "should get index" do
    get lcb_user_package_items_url
    assert_response :success
  end

  test "should get new" do
    get new_lcb_user_package_item_url
    assert_response :success
  end

  test "should create lcb_user_package_item" do
    assert_difference('LcbUserPackageItem.count') do
      post lcb_user_package_items_url, params: { lcb_user_package_item: { amount: @lcb_user_package_item.amount, begin_time: @lcb_user_package_item.begin_time, content: @lcb_user_package_item.content, create_uid: @lcb_user_package_item.create_uid, end_time: @lcb_user_package_item.end_time, id: @lcb_user_package_item.id, name: @lcb_user_package_item.name, owner_id: @lcb_user_package_item.owner_id, summary: @lcb_user_package_item.summary, tips: @lcb_user_package_item.tips, type: @lcb_user_package_item.type, used: @lcb_user_package_item.used, used_time: @lcb_user_package_item.used_time, user_id: @lcb_user_package_item.user_id, write_uid: @lcb_user_package_item.write_uid } }
    end

    assert_redirected_to lcb_user_package_item_path(LcbUserPackageItem.last)
  end

  test "should show lcb_user_package_item" do
    get lcb_user_package_item_url(@lcb_user_package_item)
    assert_response :success
  end

  test "should get edit" do
    get edit_lcb_user_package_item_url(@lcb_user_package_item)
    assert_response :success
  end

  test "should update lcb_user_package_item" do
    patch lcb_user_package_item_url(@lcb_user_package_item), params: { lcb_user_package_item: { amount: @lcb_user_package_item.amount, begin_time: @lcb_user_package_item.begin_time, content: @lcb_user_package_item.content, create_uid: @lcb_user_package_item.create_uid, end_time: @lcb_user_package_item.end_time, id: @lcb_user_package_item.id, name: @lcb_user_package_item.name, owner_id: @lcb_user_package_item.owner_id, summary: @lcb_user_package_item.summary, tips: @lcb_user_package_item.tips, type: @lcb_user_package_item.type, used: @lcb_user_package_item.used, used_time: @lcb_user_package_item.used_time, user_id: @lcb_user_package_item.user_id, write_uid: @lcb_user_package_item.write_uid } }
    assert_redirected_to lcb_user_package_item_path(@lcb_user_package_item)
  end

  test "should destroy lcb_user_package_item" do
    assert_difference('LcbUserPackageItem.count', -1) do
      delete lcb_user_package_item_url(@lcb_user_package_item)
    end

    assert_redirected_to lcb_user_package_items_path
  end
end
