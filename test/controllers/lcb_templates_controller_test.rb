require 'test_helper'

class LcbTemplatesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @lcb_template = lcb_templates(:one)
  end

  test "should get index" do
    get lcb_templates_url
    assert_response :success
  end

  test "should get new" do
    get new_lcb_template_url
    assert_response :success
  end

  test "should create lcb_template" do
    assert_difference('LcbTemplate.count') do
      post lcb_templates_url, params: { lcb_template: { code: @lcb_template.code, content: @lcb_template.content, create_uid: @lcb_template.create_uid, id: @lcb_template.id, name: @lcb_template.name, owner_id: @lcb_template.owner_id, type: @lcb_template.type, write_uid: @lcb_template.write_uid } }
    end

    assert_redirected_to lcb_template_path(LcbTemplate.last)
  end

  test "should show lcb_template" do
    get lcb_template_url(@lcb_template)
    assert_response :success
  end

  test "should get edit" do
    get edit_lcb_template_url(@lcb_template)
    assert_response :success
  end

  test "should update lcb_template" do
    patch lcb_template_url(@lcb_template), params: { lcb_template: { code: @lcb_template.code, content: @lcb_template.content, create_uid: @lcb_template.create_uid, id: @lcb_template.id, name: @lcb_template.name, owner_id: @lcb_template.owner_id, type: @lcb_template.type, write_uid: @lcb_template.write_uid } }
    assert_redirected_to lcb_template_path(@lcb_template)
  end

  test "should destroy lcb_template" do
    assert_difference('LcbTemplate.count', -1) do
      delete lcb_template_url(@lcb_template)
    end

    assert_redirected_to lcb_templates_path
  end
end
