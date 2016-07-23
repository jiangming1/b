require 'test_helper'

class LcbAccountsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @lcb_account = lcb_accounts(:one)
  end

  test "should get index" do
    get lcb_accounts_url
    assert_response :success
  end

  test "should get new" do
    get new_lcb_account_url
    assert_response :success
  end

  test "should create lcb_account" do
    assert_difference('LcbAccount.count') do
      post lcb_accounts_url, params: { lcb_account: { account_no: @lcb_account.account_no, account_type: @lcb_account.account_type, balance: @lcb_account.balance, balance_sheet_id: @lcb_account.balance_sheet_id, certificate_id: @lcb_account.certificate_id, cr_decimal: @lcb_account.cr_decimal, create_uid: @lcb_account.create_uid, dr: @lcb_account.dr, ext: @lcb_account.ext, id: @lcb_account.id, opt_user_id: @lcb_account.opt_user_id, owner_id: @lcb_account.owner_id, remark: @lcb_account.remark, row_num: @lcb_account.row_num, sign: @lcb_account.sign, subject_code: @lcb_account.subject_code, subject_name: @lcb_account.subject_name, subject_type: @lcb_account.subject_type, user_id: @lcb_account.user_id, write_uid: @lcb_account.write_uid } }
    end

    assert_redirected_to lcb_account_path(LcbAccount.last)
  end

  test "should show lcb_account" do
    get lcb_account_url(@lcb_account)
    assert_response :success
  end

  test "should get edit" do
    get edit_lcb_account_url(@lcb_account)
    assert_response :success
  end

  test "should update lcb_account" do
    patch lcb_account_url(@lcb_account), params: { lcb_account: { account_no: @lcb_account.account_no, account_type: @lcb_account.account_type, balance: @lcb_account.balance, balance_sheet_id: @lcb_account.balance_sheet_id, certificate_id: @lcb_account.certificate_id, cr_decimal: @lcb_account.cr_decimal, create_uid: @lcb_account.create_uid, dr: @lcb_account.dr, ext: @lcb_account.ext, id: @lcb_account.id, opt_user_id: @lcb_account.opt_user_id, owner_id: @lcb_account.owner_id, remark: @lcb_account.remark, row_num: @lcb_account.row_num, sign: @lcb_account.sign, subject_code: @lcb_account.subject_code, subject_name: @lcb_account.subject_name, subject_type: @lcb_account.subject_type, user_id: @lcb_account.user_id, write_uid: @lcb_account.write_uid } }
    assert_redirected_to lcb_account_path(@lcb_account)
  end

  test "should destroy lcb_account" do
    assert_difference('LcbAccount.count', -1) do
      delete lcb_account_url(@lcb_account)
    end

    assert_redirected_to lcb_accounts_path
  end
end
