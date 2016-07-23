require 'test_helper'

class LcbFinancingTargetPositionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @lcb_financing_target_position = lcb_financing_target_positions(:one)
  end

  test "should get index" do
    get lcb_financing_target_positions_url
    assert_response :success
  end

  test "should get new" do
    get new_lcb_financing_target_position_url
    assert_response :success
  end

  test "should create lcb_financing_target_position" do
    assert_difference('LcbFinancingTargetPosition.count') do
      post lcb_financing_target_positions_url, params: { lcb_financing_target_position: { create_uid: @lcb_financing_target_position.create_uid, end_time: @lcb_financing_target_position.end_time, financing_target_id: @lcb_financing_target_position.financing_target_id, id: @lcb_financing_target_position.id, owner_id: @lcb_financing_target_position.owner_id, position: @lcb_financing_target_position.position, sort_num: @lcb_financing_target_position.sort_num, start_time: @lcb_financing_target_position.start_time, write_uid: @lcb_financing_target_position.write_uid } }
    end

    assert_redirected_to lcb_financing_target_position_path(LcbFinancingTargetPosition.last)
  end

  test "should show lcb_financing_target_position" do
    get lcb_financing_target_position_url(@lcb_financing_target_position)
    assert_response :success
  end

  test "should get edit" do
    get edit_lcb_financing_target_position_url(@lcb_financing_target_position)
    assert_response :success
  end

  test "should update lcb_financing_target_position" do
    patch lcb_financing_target_position_url(@lcb_financing_target_position), params: { lcb_financing_target_position: { create_uid: @lcb_financing_target_position.create_uid, end_time: @lcb_financing_target_position.end_time, financing_target_id: @lcb_financing_target_position.financing_target_id, id: @lcb_financing_target_position.id, owner_id: @lcb_financing_target_position.owner_id, position: @lcb_financing_target_position.position, sort_num: @lcb_financing_target_position.sort_num, start_time: @lcb_financing_target_position.start_time, write_uid: @lcb_financing_target_position.write_uid } }
    assert_redirected_to lcb_financing_target_position_path(@lcb_financing_target_position)
  end

  test "should destroy lcb_financing_target_position" do
    assert_difference('LcbFinancingTargetPosition.count', -1) do
      delete lcb_financing_target_position_url(@lcb_financing_target_position)
    end

    assert_redirected_to lcb_financing_target_positions_path
  end
end
