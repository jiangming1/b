require 'test_helper'

class ApidocsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @apidoc = apidocs(:one)
  end

  test "should get index" do
    get apidocs_url
    assert_response :success
  end

  test "should get new" do
    get new_apidoc_url
    assert_response :success
  end

  test "should create apidoc" do
    assert_difference('Apidoc.count') do
      post apidocs_url, params: { apidoc: { content: @apidoc.content, name: @apidoc.name } }
    end

    assert_redirected_to apidoc_path(Apidoc.last)
  end

  test "should show apidoc" do
    get apidoc_url(@apidoc)
    assert_response :success
  end

  test "should get edit" do
    get edit_apidoc_url(@apidoc)
    assert_response :success
  end

  test "should update apidoc" do
    patch apidoc_url(@apidoc), params: { apidoc: { content: @apidoc.content, name: @apidoc.name } }
    assert_redirected_to apidoc_path(@apidoc)
  end

  test "should destroy apidoc" do
    assert_difference('Apidoc.count', -1) do
      delete apidoc_url(@apidoc)
    end

    assert_redirected_to apidocs_path
  end
end
