require 'test_helper'

class LcbImagePositionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @lcb_image_position = lcb_image_positions(:one)
  end

  test "should get index" do
    get lcb_image_positions_url
    assert_response :success
  end

  test "should get new" do
    get new_lcb_image_position_url
    assert_response :success
  end

  test "should create lcb_image_position" do
    assert_difference('LcbImagePosition.count') do
      post lcb_image_positions_url, params: { lcb_image_position: { begin_time: @lcb_image_position.begin_time, create_uid: @lcb_image_position.create_uid, end_time: @lcb_image_position.end_time, id: @lcb_image_position.id, image_url: @lcb_image_position.image_url, link_url: @lcb_image_position.link_url, owner_id: @lcb_image_position.owner_id, position: @lcb_image_position.position, sort_num: @lcb_image_position.sort_num, title: @lcb_image_position.title, write_uid: @lcb_image_position.write_uid } }
    end

    assert_redirected_to lcb_image_position_path(LcbImagePosition.last)
  end

  test "should show lcb_image_position" do
    get lcb_image_position_url(@lcb_image_position)
    assert_response :success
  end

  test "should get edit" do
    get edit_lcb_image_position_url(@lcb_image_position)
    assert_response :success
  end

  test "should update lcb_image_position" do
    patch lcb_image_position_url(@lcb_image_position), params: { lcb_image_position: { begin_time: @lcb_image_position.begin_time, create_uid: @lcb_image_position.create_uid, end_time: @lcb_image_position.end_time, id: @lcb_image_position.id, image_url: @lcb_image_position.image_url, link_url: @lcb_image_position.link_url, owner_id: @lcb_image_position.owner_id, position: @lcb_image_position.position, sort_num: @lcb_image_position.sort_num, title: @lcb_image_position.title, write_uid: @lcb_image_position.write_uid } }
    assert_redirected_to lcb_image_position_path(@lcb_image_position)
  end

  test "should destroy lcb_image_position" do
    assert_difference('LcbImagePosition.count', -1) do
      delete lcb_image_position_url(@lcb_image_position)
    end

    assert_redirected_to lcb_image_positions_path
  end
end
