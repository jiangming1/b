require 'test_helper'

class LcbKlinesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @lcb_kline = lcb_klines(:one)
  end

  test "should get index" do
    get lcb_klines_url
    assert_response :success
  end

  test "should get new" do
    get new_lcb_kline_url
    assert_response :success
  end

  test "should create lcb_kline" do
    assert_difference('LcbKline.count') do
      post lcb_klines_url, params: { lcb_kline: { closed_price: @lcb_kline.closed_price, create_uid: @lcb_kline.create_uid, height_price: @lcb_kline.height_price, id: @lcb_kline.id, low_price: @lcb_kline.low_price, open_price: @lcb_kline.open_price, owner_id: @lcb_kline.owner_id, type: @lcb_kline.type, write_uid: @lcb_kline.write_uid } }
    end

    assert_redirected_to lcb_kline_path(LcbKline.last)
  end

  test "should show lcb_kline" do
    get lcb_kline_url(@lcb_kline)
    assert_response :success
  end

  test "should get edit" do
    get edit_lcb_kline_url(@lcb_kline)
    assert_response :success
  end

  test "should update lcb_kline" do
    patch lcb_kline_url(@lcb_kline), params: { lcb_kline: { closed_price: @lcb_kline.closed_price, create_uid: @lcb_kline.create_uid, height_price: @lcb_kline.height_price, id: @lcb_kline.id, low_price: @lcb_kline.low_price, open_price: @lcb_kline.open_price, owner_id: @lcb_kline.owner_id, type: @lcb_kline.type, write_uid: @lcb_kline.write_uid } }
    assert_redirected_to lcb_kline_path(@lcb_kline)
  end

  test "should destroy lcb_kline" do
    assert_difference('LcbKline.count', -1) do
      delete lcb_kline_url(@lcb_kline)
    end

    assert_redirected_to lcb_klines_path
  end
end
