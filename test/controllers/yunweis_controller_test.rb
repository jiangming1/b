require 'test_helper'

class YunweisControllerTest < ActionDispatch::IntegrationTest
  setup do
    @yunwei = yunweis(:one)
  end

  test "should get index" do
    get yunweis_url
    assert_response :success
  end

  test "should get new" do
    get new_yunwei_url
    assert_response :success
  end

  test "should create yunwei" do
    assert_difference('Yunwei.count') do
      post yunweis_url, params: { yunwei: { command: @yunwei.command, jobs: @yunwei.jobs } }
    end

    assert_redirected_to yunwei_path(Yunwei.last)
  end

  test "should show yunwei" do
    get yunwei_url(@yunwei)
    assert_response :success
  end

  test "should get edit" do
    get edit_yunwei_url(@yunwei)
    assert_response :success
  end

  test "should update yunwei" do
    patch yunwei_url(@yunwei), params: { yunwei: { command: @yunwei.command, jobs: @yunwei.jobs } }
    assert_redirected_to yunwei_path(@yunwei)
  end

  test "should destroy yunwei" do
    assert_difference('Yunwei.count', -1) do
      delete yunwei_url(@yunwei)
    end

    assert_redirected_to yunweis_path
  end
end
