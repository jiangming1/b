require 'test_helper'

class LcbFinancingTargetTagsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @lcb_financing_target_tag = lcb_financing_target_tags(:one)
  end

  test "should get index" do
    get lcb_financing_target_tags_url
    assert_response :success
  end

  test "should get new" do
    get new_lcb_financing_target_tag_url
    assert_response :success
  end

  test "should create lcb_financing_target_tag" do
    assert_difference('LcbFinancingTargetTag.count') do
      post lcb_financing_target_tags_url, params: { lcb_financing_target_tag: { create_uid: @lcb_financing_target_tag.create_uid, financing_target_id: @lcb_financing_target_tag.financing_target_id, id: @lcb_financing_target_tag.id, owner_id: @lcb_financing_target_tag.owner_id, tag: @lcb_financing_target_tag.tag, write_uid: @lcb_financing_target_tag.write_uid } }
    end

    assert_redirected_to lcb_financing_target_tag_path(LcbFinancingTargetTag.last)
  end

  test "should show lcb_financing_target_tag" do
    get lcb_financing_target_tag_url(@lcb_financing_target_tag)
    assert_response :success
  end

  test "should get edit" do
    get edit_lcb_financing_target_tag_url(@lcb_financing_target_tag)
    assert_response :success
  end

  test "should update lcb_financing_target_tag" do
    patch lcb_financing_target_tag_url(@lcb_financing_target_tag), params: { lcb_financing_target_tag: { create_uid: @lcb_financing_target_tag.create_uid, financing_target_id: @lcb_financing_target_tag.financing_target_id, id: @lcb_financing_target_tag.id, owner_id: @lcb_financing_target_tag.owner_id, tag: @lcb_financing_target_tag.tag, write_uid: @lcb_financing_target_tag.write_uid } }
    assert_redirected_to lcb_financing_target_tag_path(@lcb_financing_target_tag)
  end

  test "should destroy lcb_financing_target_tag" do
    assert_difference('LcbFinancingTargetTag.count', -1) do
      delete lcb_financing_target_tag_url(@lcb_financing_target_tag)
    end

    assert_redirected_to lcb_financing_target_tags_path
  end
end
