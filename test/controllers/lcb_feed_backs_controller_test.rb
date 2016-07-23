require 'test_helper'

class LcbFeedBacksControllerTest < ActionDispatch::IntegrationTest
  setup do
    @lcb_feed_back = lcb_feed_backs(:one)
  end

  test "should get index" do
    get lcb_feed_backs_url
    assert_response :success
  end

  test "should get new" do
    get new_lcb_feed_back_url
    assert_response :success
  end

  test "should create lcb_feed_back" do
    assert_difference('LcbFeedBack.count') do
      post lcb_feed_backs_url, params: { lcb_feed_back: { content: @lcb_feed_back.content, create_uid: @lcb_feed_back.create_uid, id: @lcb_feed_back.id, owner_id: @lcb_feed_back.owner_id, status: @lcb_feed_back.status, user_id: @lcb_feed_back.user_id, write_uid: @lcb_feed_back.write_uid } }
    end

    assert_redirected_to lcb_feed_back_path(LcbFeedBack.last)
  end

  test "should show lcb_feed_back" do
    get lcb_feed_back_url(@lcb_feed_back)
    assert_response :success
  end

  test "should get edit" do
    get edit_lcb_feed_back_url(@lcb_feed_back)
    assert_response :success
  end

  test "should update lcb_feed_back" do
    patch lcb_feed_back_url(@lcb_feed_back), params: { lcb_feed_back: { content: @lcb_feed_back.content, create_uid: @lcb_feed_back.create_uid, id: @lcb_feed_back.id, owner_id: @lcb_feed_back.owner_id, status: @lcb_feed_back.status, user_id: @lcb_feed_back.user_id, write_uid: @lcb_feed_back.write_uid } }
    assert_redirected_to lcb_feed_back_path(@lcb_feed_back)
  end

  test "should destroy lcb_feed_back" do
    assert_difference('LcbFeedBack.count', -1) do
      delete lcb_feed_back_url(@lcb_feed_back)
    end

    assert_redirected_to lcb_feed_backs_path
  end
end
