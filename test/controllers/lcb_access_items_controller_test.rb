require 'test_helper'

class LcbAccessItemsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @lcb_access_item = lcb_access_items(:one)
  end

  test "should get index" do
    get lcb_access_items_url
    assert_response :success
  end

  test "should get new" do
    get new_lcb_access_item_url
    assert_response :success
  end

  test "should create lcb_access_item" do
    assert_difference('LcbAccessItem.count') do
      post lcb_access_items_url, params: { lcb_access_item: { action_id: @lcb_access_item.action_id, create_uid: @lcb_access_item.create_uid, id: @lcb_access_item.id, item_type: @lcb_access_item.item_type, menu_id: @lcb_access_item.menu_id, owner_id: @lcb_access_item.owner_id, role_id: @lcb_access_item.role_id, write_uid: @lcb_access_item.write_uid } }
    end

    assert_redirected_to lcb_access_item_path(LcbAccessItem.last)
  end

  test "should show lcb_access_item" do
    get lcb_access_item_url(@lcb_access_item)
    assert_response :success
  end

  test "should get edit" do
    get edit_lcb_access_item_url(@lcb_access_item)
    assert_response :success
  end

  test "should update lcb_access_item" do
    patch lcb_access_item_url(@lcb_access_item), params: { lcb_access_item: { action_id: @lcb_access_item.action_id, create_uid: @lcb_access_item.create_uid, id: @lcb_access_item.id, item_type: @lcb_access_item.item_type, menu_id: @lcb_access_item.menu_id, owner_id: @lcb_access_item.owner_id, role_id: @lcb_access_item.role_id, write_uid: @lcb_access_item.write_uid } }
    assert_redirected_to lcb_access_item_path(@lcb_access_item)
  end

  test "should destroy lcb_access_item" do
    assert_difference('LcbAccessItem.count', -1) do
      delete lcb_access_item_url(@lcb_access_item)
    end

    assert_redirected_to lcb_access_items_path
  end
end
