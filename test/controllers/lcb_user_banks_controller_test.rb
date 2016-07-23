require 'test_helper'

class LcbUserBanksControllerTest < ActionDispatch::IntegrationTest
  setup do
    @lcb_user_bank = lcb_user_banks(:one)
  end

  test "should get index" do
    get lcb_user_banks_url
    assert_response :success
  end

  test "should get new" do
    get new_lcb_user_bank_url
    assert_response :success
  end

  test "should create lcb_user_bank" do
    assert_difference('LcbUserBank.count') do
      post lcb_user_banks_url, params: { lcb_user_bank: { bank_card_no: @lcb_user_bank.bank_card_no, bank_code: @lcb_user_bank.bank_code, bank_name: @lcb_user_bank.bank_name, create_uid: @lcb_user_bank.create_uid, holder: @lcb_user_bank.holder, id: @lcb_user_bank.id, lcb_user_id: @lcb_user_bank.lcb_user_id, mobile: @lcb_user_bank.mobile, owner_id: @lcb_user_bank.owner_id, pid: @lcb_user_bank.pid, write_uid: @lcb_user_bank.write_uid } }
    end

    assert_redirected_to lcb_user_bank_path(LcbUserBank.last)
  end

  test "should show lcb_user_bank" do
    get lcb_user_bank_url(@lcb_user_bank)
    assert_response :success
  end

  test "should get edit" do
    get edit_lcb_user_bank_url(@lcb_user_bank)
    assert_response :success
  end

  test "should update lcb_user_bank" do
    patch lcb_user_bank_url(@lcb_user_bank), params: { lcb_user_bank: { bank_card_no: @lcb_user_bank.bank_card_no, bank_code: @lcb_user_bank.bank_code, bank_name: @lcb_user_bank.bank_name, create_uid: @lcb_user_bank.create_uid, holder: @lcb_user_bank.holder, id: @lcb_user_bank.id, lcb_user_id: @lcb_user_bank.lcb_user_id, mobile: @lcb_user_bank.mobile, owner_id: @lcb_user_bank.owner_id, pid: @lcb_user_bank.pid, write_uid: @lcb_user_bank.write_uid } }
    assert_redirected_to lcb_user_bank_path(@lcb_user_bank)
  end

  test "should destroy lcb_user_bank" do
    assert_difference('LcbUserBank.count', -1) do
      delete lcb_user_bank_url(@lcb_user_bank)
    end

    assert_redirected_to lcb_user_banks_path
  end
end
