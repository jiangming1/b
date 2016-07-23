require 'test_helper'

class LcbPicsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @lcb_pic = lcb_pics(:one)
  end

  test "should get index" do
    get lcb_pics_url
    assert_response :success
  end

  test "should get new" do
    get new_lcb_pic_url
    assert_response :success
  end

  test "should create lcb_pic" do
    assert_difference('LcbPic.count') do
      post lcb_pics_url, params: { lcb_pic: { conntent_type: @lcb_pic.conntent_type, create_uid: @lcb_pic.create_uid, crite_uid: @lcb_pic.crite_uid, id: @lcb_pic.id, name: @lcb_pic.name, owner_id: @lcb_pic.owner_id, path: @lcb_pic.path, size: @lcb_pic.size } }
    end

    assert_redirected_to lcb_pic_path(LcbPic.last)
  end

  test "should show lcb_pic" do
    get lcb_pic_url(@lcb_pic)
    assert_response :success
  end

  test "should get edit" do
    get edit_lcb_pic_url(@lcb_pic)
    assert_response :success
  end

  test "should update lcb_pic" do
    patch lcb_pic_url(@lcb_pic), params: { lcb_pic: { conntent_type: @lcb_pic.conntent_type, create_uid: @lcb_pic.create_uid, crite_uid: @lcb_pic.crite_uid, id: @lcb_pic.id, name: @lcb_pic.name, owner_id: @lcb_pic.owner_id, path: @lcb_pic.path, size: @lcb_pic.size } }
    assert_redirected_to lcb_pic_path(@lcb_pic)
  end

  test "should destroy lcb_pic" do
    assert_difference('LcbPic.count', -1) do
      delete lcb_pic_url(@lcb_pic)
    end

    assert_redirected_to lcb_pics_path
  end
end
