require 'test_helper'

class LcbMenusControllerTest < ActionDispatch::IntegrationTest
  setup do
    @lcb_menu = lcb_menus(:one)
  end

  test "should get index" do
    get lcb_menus_url
    assert_response :success
  end

  test "should get new" do
    get new_lcb_menu_url
    assert_response :success
  end

  test "should create lcb_menu" do
    assert_difference('LcbMenu.count') do
      post lcb_menus_url, params: { lcb_menu: { create_uid: @lcb_menu.create_uid, icon: @lcb_menu.icon, id: @lcb_menu.id, menu_name: @lcb_menu.menu_name, owner_id: @lcb_menu.owner_id, parent_menu_id: @lcb_menu.parent_menu_id, quick_btn: @lcb_menu.quick_btn, separator: @lcb_menu.separator, sort_num: @lcb_menu.sort_num, target: @lcb_menu.target, url: @lcb_menu.url, write_uid: @lcb_menu.write_uid } }
    end

    assert_redirected_to lcb_menu_path(LcbMenu.last)
  end

  test "should show lcb_menu" do
    get lcb_menu_url(@lcb_menu)
    assert_response :success
  end

  test "should get edit" do
    get edit_lcb_menu_url(@lcb_menu)
    assert_response :success
  end

  test "should update lcb_menu" do
    patch lcb_menu_url(@lcb_menu), params: { lcb_menu: { create_uid: @lcb_menu.create_uid, icon: @lcb_menu.icon, id: @lcb_menu.id, menu_name: @lcb_menu.menu_name, owner_id: @lcb_menu.owner_id, parent_menu_id: @lcb_menu.parent_menu_id, quick_btn: @lcb_menu.quick_btn, separator: @lcb_menu.separator, sort_num: @lcb_menu.sort_num, target: @lcb_menu.target, url: @lcb_menu.url, write_uid: @lcb_menu.write_uid } }
    assert_redirected_to lcb_menu_path(@lcb_menu)
  end

  test "should destroy lcb_menu" do
    assert_difference('LcbMenu.count', -1) do
      delete lcb_menu_url(@lcb_menu)
    end

    assert_redirected_to lcb_menus_path
  end
end
