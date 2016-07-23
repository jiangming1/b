require 'test_helper'

class LcbActionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @lcb_action = lcb_actions(:one)
  end

  test "should get index" do
    get lcb_actions_url
    assert_response :success
  end

  test "should get new" do
    get new_lcb_action_url
    assert_response :success
  end

  test "should create lcb_action" do
    assert_difference('LcbAction.count') do
      post lcb_actions_url, params: { lcb_action: { action_name: @lcb_action.action_name, create_uid: @lcb_action.create_uid, id: @lcb_action.id, owner_id: @lcb_action.owner_id, uri: @lcb_action.uri, write_uid: @lcb_action.write_uid } }
    end

    assert_redirected_to lcb_action_path(LcbAction.last)
  end

  test "should show lcb_action" do
    get lcb_action_url(@lcb_action)
    assert_response :success
  end

  test "should get edit" do
    get edit_lcb_action_url(@lcb_action)
    assert_response :success
  end

  test "should update lcb_action" do
    patch lcb_action_url(@lcb_action), params: { lcb_action: { action_name: @lcb_action.action_name, create_uid: @lcb_action.create_uid, id: @lcb_action.id, owner_id: @lcb_action.owner_id, uri: @lcb_action.uri, write_uid: @lcb_action.write_uid } }
    assert_redirected_to lcb_action_path(@lcb_action)
  end

  test "should destroy lcb_action" do
    assert_difference('LcbAction.count', -1) do
      delete lcb_action_url(@lcb_action)
    end

    assert_redirected_to lcb_actions_path
  end
end
