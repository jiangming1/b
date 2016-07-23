require 'test_helper'

class LcbRegistriesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @lcb_registry = lcb_registries(:one)
  end

  test "should get index" do
    get lcb_registries_url
    assert_response :success
  end

  test "should get new" do
    get new_lcb_registry_url
    assert_response :success
  end

  test "should create lcb_registry" do
    assert_difference('LcbRegistry.count') do
      post lcb_registries_url, params: { lcb_registry: { create_uid: @lcb_registry.create_uid, id: @lcb_registry.id, owner_id: @lcb_registry.owner_id, regex: @lcb_registry.regex, summary: @lcb_registry.summary, val: @lcb_registry.val, visible: @lcb_registry.visible, write_uid: @lcb_registry.write_uid } }
    end

    assert_redirected_to lcb_registry_path(LcbRegistry.last)
  end

  test "should show lcb_registry" do
    get lcb_registry_url(@lcb_registry)
    assert_response :success
  end

  test "should get edit" do
    get edit_lcb_registry_url(@lcb_registry)
    assert_response :success
  end

  test "should update lcb_registry" do
    patch lcb_registry_url(@lcb_registry), params: { lcb_registry: { create_uid: @lcb_registry.create_uid, id: @lcb_registry.id, owner_id: @lcb_registry.owner_id, regex: @lcb_registry.regex, summary: @lcb_registry.summary, val: @lcb_registry.val, visible: @lcb_registry.visible, write_uid: @lcb_registry.write_uid } }
    assert_redirected_to lcb_registry_path(@lcb_registry)
  end

  test "should destroy lcb_registry" do
    assert_difference('LcbRegistry.count', -1) do
      delete lcb_registry_url(@lcb_registry)
    end

    assert_redirected_to lcb_registries_path
  end
end
